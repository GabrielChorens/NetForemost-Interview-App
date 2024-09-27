import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_flutter/src/core/constants/api_key.dart';

part 'search_request_dto.freezed.dart';

@freezed
class SearchRequestDto with _$SearchRequestDto {
  const factory SearchRequestDto({
    required String query,
  }) = _SearchRequestDto;

  const SearchRequestDto._();

  Map<String, dynamic> toJson({String? language, String? apiKey}) {
    final languageCode = language ?? 'en-us';
    return {
      'apikey': apiKey ?? accuWeatherApiKey,
      'q': query,
      'language': languageCode,
    };
  }
}
