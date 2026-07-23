import 'package:injectable/injectable.dart';
import 'package:task3/core/error/error_handler.dart';
import 'package:task3/core/network/api_services.dart';
import 'package:task3/core/secure/token_storage.dart';
import 'package:task3/features/auth/data/models/user_model.dart';
import 'package:task3/features/auth/data/source/auth_data_source.dart';

@LazySingleton(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final ApiServices apiServices;
  final TokenStorage tokenStorage;
  AuthDataSourceImpl(this.apiServices, this.tokenStorage);
  @override
  Future<UserModel> login({
    required String userName,
    required String password,
  }) async {
    try {
      final user = await apiServices.login(
        username: userName,
        password: password,
      );
      tokenStorage.saveToken(
        accessToken: user.accessToken,
        refreshToken: user.refreshToken,
      );

      return user;
    } catch (e) {
      throw ErrorHandler.handle(e).failure;
    }
  }
}
