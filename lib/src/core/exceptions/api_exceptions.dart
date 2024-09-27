import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exceptions.freezed.dart';

@freezed
class ApiExceptions with _$ApiExceptions {
  const factory ApiExceptions.badRequest() = BadRequest;
  const factory ApiExceptions.unauthorized() = Unauthorized;
  const factory ApiExceptions.unknownError() = UnknownError;
  const factory ApiExceptions.noInternetConnection() = NoInternetConnection;
}
