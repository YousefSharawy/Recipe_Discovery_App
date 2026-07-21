import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/features/auth/domain/usecases/login_usecase.dart';
import 'package:task3/features/auth/presentation/controller/auth_states.dart';

@lazySingleton
class AuthController with ChangeNotifier {
  final LoginUsecase _loginUsecase;
  AuthStates _state = AuthStates.initial();
  AuthStates get state => _state;
  AuthController(this._loginUsecase);

  void emit(AuthStates state) {
    _state = state;
    notifyListeners();
  }

  Future<void> login({
    required String userName,
    required String password,
  }) async {
    final result = await _loginUsecase(userName: userName, password: password);
    result.fold((e) => emit(AuthStates.error(e.message)), (user) {
      emit(AuthStates.success(user));
      
    });
  }
}
