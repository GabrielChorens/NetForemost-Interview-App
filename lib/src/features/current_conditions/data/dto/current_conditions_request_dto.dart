import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_flutter/src/core/constants/api_key.dart';

part 'current_conditions_request_dto.freezed.dart';

@freezed
class CurrentConditionsRequestDto with _$CurrentConditionsRequestDto {
  const factory CurrentConditionsRequestDto() = _CurrentConditionsRequestDto;

  const CurrentConditionsRequestDto._();

  Map<String, dynamic> toJson({
    String? language,
    bool details = false,
    String? apiKey,
  }) {
    return {
      'apikey': apiKey ?? accuWeatherApiKey,
      'language': language ?? 'en-us',
      'details': details,
    };
  }
}
