import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/core/error/failure.dart';
import 'package:task3/features/auth/data/mappers/user_model_mapper.dart';
import 'package:task3/features/auth/data/source/auth_data_source.dart';
import 'package:task3/features/auth/domain/entities/user_entity.dart';
import 'package:task3/features/auth/domain/repository/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthDataSource dataSource;
  AuthRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, UserEntity>> login({
    required String userName,
    required String password,
  }) async {
    try {
      final response = await dataSource.login(
        userName: userName,
        password: password,
      );
      return Right(response.toEntity());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
