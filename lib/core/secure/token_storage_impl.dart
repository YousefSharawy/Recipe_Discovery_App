import 'package:injectable/injectable.dart';
import 'package:task3/core/secure/token_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@LazySingleton(as:TokenStorage )
class TokenStorageImpl implements TokenStorage{
  final FlutterSecureStorage _secureStorage;
  TokenStorageImpl(this._secureStorage);
  static const _access ='Access';
  static const _refresh ='refresh';
  @override
  Future<String?> getAccessToken()=> _secureStorage.read(key: _access);

  @override
  Future<String?> getRefreshToken() => _secureStorage.read(key: _refresh);

  @override
  Future<void> saveToken({required String accessToken, required String refreshToken})async {
    await _secureStorage.write(key: _access, value: accessToken);
    await _secureStorage.write(key: _refresh, value: refreshToken);
  }
}