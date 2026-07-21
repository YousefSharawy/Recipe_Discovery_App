import 'package:dio/dio.dart';
import 'package:task3/core/constants/api_constants.dart';
import 'package:injectable/injectable.dart';
@singleton
class DioService {
  late Dio dio;
  DioService() {
    dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
  }
}