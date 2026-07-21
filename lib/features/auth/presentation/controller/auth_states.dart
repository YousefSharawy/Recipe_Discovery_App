import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity.dart';
part 'auth_states.freezed.dart';
@freezed 
sealed class  AuthStates  with _$AuthStates {
  const factory AuthStates.initial() = AuthInitial;
  const factory AuthStates.loading() = AuthLoading;
  const factory AuthStates.success(UserEntity user) = AuthSuccess;
  const factory AuthStates.error(String message) = AuthError;
}