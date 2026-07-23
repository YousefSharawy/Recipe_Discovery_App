import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/core/constants/api_constants.dart';
import 'package:task3/core/secure/token_storage.dart';

@injectable
class AuthInterceptor extends QueuedInterceptor {
  final TokenStorage _storage;
  final Dio _refreshDio;

  AuthInterceptor(this._storage)
      : _refreshDio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.path != ApiConstants.loginEndpoint) {
      final token = await _storage.getAccessToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode != 401) return handler.next(err);

    final refresh = await _storage.getRefreshToken();
    if (refresh == null) return handler.next(err);

    try {
      final res = await _refreshDio.post(
        ApiConstants.refreshEndpoint,
        data: {'refreshToken': refresh},
      );
      final newAccess = res.data['accessToken'] as String;
      final newRefresh = res.data['refreshToken'] as String;
      await _storage.saveToken(
        accessToken: newAccess,
        refreshToken: newRefresh,
      );

      final req = err.requestOptions;
      req.headers['Authorization'] = 'Bearer $newAccess';
      final clone = await _refreshDio.fetch(req);
      return handler.resolve(clone);
    } catch (_) {
      return handler.next(err);
    }
  }
}
