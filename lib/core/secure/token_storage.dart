import '../../features/auth/data/models/user_model.dart';

abstract class TokenStorage {
  Future<void> saveToken({
    required String accessToken,
    required String refreshToken,
  });
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> saveUser(UserModel user);
  Future<UserModel?> getUser();
}
