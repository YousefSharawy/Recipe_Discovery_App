import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'failure.dart';

/// Maps low-level exceptions (Supabase auth / postgrest / storage, or unknown)
/// to a domain [Failure]. Mirrors t3afy's ErrorHandler — data sources call
/// `throw ErrorHandler.handle(error).failure;` and repositories surface the
/// `Left(failure)`.
class ErrorHandler implements Exception {
  late final Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleDioError(error);
    } 
    else {
      failure = DataSource.unknown.toFailure();
    }
    if (!kReleaseMode) {
      log('<-------> \n ${error.toString()} \n <------->');
      log('<====> ${failure.code} : ${failure.message} <====>');
    }
  }
    Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return DataSource.connectionTimeout.toFailure();
      case DioExceptionType.receiveTimeout:
        return DataSource.receiveTimeout.toFailure();
      case DioExceptionType.sendTimeout:
        return DataSource.receiveTimeout.toFailure();
      case DioExceptionType.cancel:
        return DataSource.cancel.toFailure();
      case DioExceptionType.connectionError:
        return DataSource.noInternetConnection.toFailure();
      case DioExceptionType.badResponse:
        return _handleStatusCode(error.response?.statusCode);
      default:
        return DataSource.unknown.toFailure();
    }
  }
Failure _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case ResponseCode.success:
        return DataSource.success.toFailure();
      case ResponseCode.noContent:
        return DataSource.noContent.toFailure();
      case ResponseCode.badRequest:
        return DataSource.badRequest.toFailure();
      case ResponseCode.unauthorised:
        return DataSource.unauthorised.toFailure();
      case ResponseCode.forbidden:
        return DataSource.forbidden.toFailure();
      case ResponseCode.notFound:
        return DataSource.notFound.toFailure();
      case ResponseCode.internalServerError:
        return DataSource.internalServerError.toFailure();
      default:
        return DataSource.unknown.toFailure();
    }
  }
  
}

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorised,
  notFound,
  internalServerError,
  receiveTimeout,
  cacheError,
  noInternetConnection,
  unknown,
  connectionTimeout,
  cancel,
}

extension DataSourceX on DataSource {
  Failure toFailure() {
    switch (this) {
      case DataSource.success:
        return const Failure(ResponseCode.success, ResponseMessage.success);
      case DataSource.noContent:
        return const Failure(ResponseCode.noContent, ResponseMessage.noContent);
      case DataSource.badRequest:
        return const Failure(
            ResponseCode.badRequest, ResponseMessage.badRequest);
      case DataSource.forbidden:
        return const Failure(ResponseCode.forbidden, ResponseMessage.forbidden);
      case DataSource.unauthorised:
        return const Failure(
            ResponseCode.unauthorised, ResponseMessage.unauthorised);
      case DataSource.notFound:
        return const Failure(ResponseCode.notFound, ResponseMessage.notFound);
      case DataSource.internalServerError:
        return const Failure(
            ResponseCode.internalServerError,
            ResponseMessage.internalServerError);
      case DataSource.receiveTimeout:
        return const Failure(
            ResponseCode.receiveTimeout, ResponseMessage.receiveTimeout);
      case DataSource.cacheError:
        return const Failure(
            ResponseCode.cacheError, ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return const Failure(ResponseCode.noInternetConnection,
            ResponseMessage.noInternetConnection);
      case DataSource.unknown:
        return const Failure(ResponseCode.unknown, ResponseMessage.unknown);
      case DataSource.connectionTimeout:
        return const Failure(
            ResponseCode.connectionTimeout, ResponseMessage.connectionTimeout);
      case DataSource.cancel:
        return const Failure(ResponseCode.cancel, ResponseMessage.cancel);
    }
  }
}

class ResponseCode {
  static const int success = 200;
  static const int noContent = 201;
  static const int badRequest = 400;
  static const int forbidden = 403;
  static const int unauthorised = 401;
  static const int notFound = 404;
  static const int internalServerError = 500;
  static const int noInternetConnection = -1;
  static const int receiveTimeout = -2;
  static const int cacheError = -3;
  static const int connectionTimeout = -4;
  static const int unknown = -5;
  static const int cancel = -6;
}

class ResponseMessage {
  static const String success = 'Success';
  static const String noContent = 'Success';
  static const String badRequest = 'Something went wrong. Please try again.';
  static const String forbidden = "You don't have permission to do this.";
  static const String unauthorised = 'Incorrect email or password.';
  static const String notFound = 'Not found.';
  static const String internalServerError =
      'Server error. Please try again later.';
  static const String noInternetConnection = 'No internet connection.';
  static const String receiveTimeout = 'Connection timed out.';
  static const String connectionTimeout = 'Connection timed out.';
  static const String cacheError = 'Cache error.';
  static const String unknown = 'Something went wrong. Please try again.';
  static const String cancel = 'Request cancelled.';
}
