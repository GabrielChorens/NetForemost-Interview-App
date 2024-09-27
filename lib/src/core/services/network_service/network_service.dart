// ignore_for_file: directives_ordering

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_flutter/src/core/api/url.dart';
import 'package:interview_flutter/src/core/exceptions/api_exceptions.dart';
import 'package:interview_flutter/src/core/services/network_service/exception_parsers.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// Type definition for the repository request
typedef RepositoryRequest<T> = Future<Either<ApiExceptions, T>>;

///Enum to define the request method to be used in the Dio fetch method
enum DioRequestMethod {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE');

  const DioRequestMethod(
    this.value,
  );

  final String value;
}

@singleton
class NetworkService {
  NetworkService() : _dio = Dio() {
    _dio.options
      ..connectTimeout = const Duration(seconds: 7)
      ..receiveTimeout = const Duration(seconds: 7)
      ..sendTimeout = const Duration(seconds: 7)
      ..baseUrl = baseUrl
      ..contentType = 'application/json';

    if (kDebugMode) {
      //Dio logger to log requests and responses in case debug mode
      _dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
        ),
      );
    }
  }

  NetworkService.customized({
    required Dio dio,
    required BaseOptions options,
  }) : _dio = dio {
    _dio.options = options;
  }

  final Dio _dio;

  ///Method to perform any network request
  ///
  /// * [T] - being the domain model to return in case of success
  /// to the domain model without looking for the data key
  /// * [onError] - function to handle custom errors that are not exceptions
  Future<Either<ApiExceptions, T>> fetch<T>(
    String path, {
    required T Function(Object json) successDataParser,
    DioRequestMethod method = DioRequestMethod.post,
    ApiExceptions? Function(Object?)? onError,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    dynamic body,
  }) {
    return _fetch<T>(
      path,
      method: method,
      fromJson: (response) {
        if (response == null) {
          return left(
            const UnknownError(),
          );
        }

        //Possible error parsed. Error parsing always takes precedence over success parsing.
        final error = onError?.call(response);

        if (error != null) {
          return left(error);
        }
        //Try to parse the response directly to the domain model.
        final model = successDataParser(response);
        try {
          return right(model);
        } catch (e) {
          return left(const UnknownError());
        }
      },
      query: query,
      headers: headers,
      body: body,
    );
  }

  //Fetch method from which all network requests are made
  Future<Either<ApiExceptions, T>> _fetch<T>(
    String path, {
    required DioRequestMethod method,
    //Parser assuming that the response is a Map<String, dynamic> and no exception is thrown.
    required Either<ApiExceptions, T> Function(Object?) fromJson,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    dynamic body,
  }) async {
    try {
      final response = await _dio.fetch<Object?>(
        RequestOptions(
          path: '$baseUrl$path',
          method: method.value,
          queryParameters: query,
          headers: headers,
          data: body,
          contentType: 'application/json',
        ),
      );
      if (response.statusCode != null && response.statusCode! >= 400) {
        return left(response.toApiException());
      }
      return fromJson(response.data);
    } on DioException catch (e) {
      final error = e.toApiException();
      return left(error);
    } on SocketException catch (e) {
      final error = e.toApiException();
      return left(error);
    } catch (e) {
      return left(const UnknownError());
    }
  }
}
