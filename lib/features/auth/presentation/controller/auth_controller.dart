import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/features/auth/domain/usecases/login_usecase.dart';
import 'package:task3/features/auth/presentation/controller/auth_states.dart';

import '../../../../core/injection.dart';
import '../../../../core/secure/token_storage.dart';
import '../../data/mappers/user_model_mapper.dart';
import '../../domain/entities/user_entity.dart';

@lazySingleton
class AuthController with ChangeNotifier {
  final LoginUsecase _loginUsecase;
  AuthStates _state = AuthStates.initial();
  AuthStates get state => _state;
  AuthController(this._loginUsecase);
  UserEntity? user;

  void emit(AuthStates state) {
    _state = state;
    notifyListeners();
  }

  Future<void> login({
    required String userName,
    required String password,
  }) async {
    final result = await _loginUsecase(userName: userName, password: password);
    result.fold((e) => emit(AuthStates.error(e.message)), (user) async {
      this.user = user;
      await getIt<TokenStorage>().saveUser(user.toModel());
      emit(AuthStates.success(user));
    });
  }
}
