import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/features/auth/domain/repository/auth_repository.dart';

import '../../../../core/error/failure.dart';
import '../entities/user_entity.dart';

@lazySingleton
class LoginUsecase {
  AuthRepository repository;
  LoginUsecase(this.repository);
  Future<Either<Failure, UserEntity>> call({
    required String userName,
    required String password,
  }) => repository.login(userName: userName, password: password);
}
