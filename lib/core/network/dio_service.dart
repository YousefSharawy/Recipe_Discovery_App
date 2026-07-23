import 'package:dio/dio.dart';
import 'package:task3/core/constants/api_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/core/network/auth_interceptor.dart';
@singleton
class DioService {
  late Dio dio;
  DioService(AuthInterceptor authInterceptor) {
    dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
    dio.interceptors.add(authInterceptor);
  }
}