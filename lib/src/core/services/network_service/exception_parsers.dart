import 'dart:io';

import 'package:dio/dio.dart';
import 'package:interview_flutter/src/core/exceptions/api_exceptions.dart';

extension DioExceptionParserX on DioException {
  ApiExceptions toApiException() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
        return const NoInternetConnection();
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        return const UnknownError();
      case DioExceptionType.badResponse:
        {
          switch (response?.statusCode) {
            case 400:
              return const BadRequest();
            case 401:
            case 403:
              return const Unauthorized();
            default:
              return const UnknownError();
          }
        }
    }
  }
}

extension SocketExceptionParserX on SocketException {
  ApiExceptions toApiException() {
    return const NoInternetConnection();
  }
}

extension ApiExceptionX on Response<Object?>? {
  ApiExceptions toApiException() {
    if (this == null) {
      return const UnknownError();
    }
    final statusCode = this!.statusCode;
    switch (statusCode) {
      case 400:
        return const BadRequest();
      case 401:
      case 403:
        return const Unauthorized();
      default:
        return const UnknownError();
    }
  }
}
