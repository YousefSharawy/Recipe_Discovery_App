import 'package:task3/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:task3/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
Future<Either<Failure,UserEntity>>login({required String userName , required String password});
}