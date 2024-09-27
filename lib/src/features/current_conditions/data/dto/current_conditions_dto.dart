import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_conditions_dto.freezed.dart';

part 'current_conditions_dto.g.dart';

@Freezed(
  toJson: false,
)
class CurrentConditionsDto with _$CurrentConditionsDto {
  const factory CurrentConditionsDto({
    @Default(1) int weatherIcon,
    @Default('') String weatherText,
    @Default('') String localObservationDateTime,
    @Default(false) bool isDayTime,
    @Default(false) bool hasPrecipitation,
    TemperatureDto? temperature,
  }) = _CurrentConditionsDto;

  const CurrentConditionsDto._();

  factory CurrentConditionsDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentConditionsDtoFromJson(json);
}

@Freezed(
  toJson: false,
)
class TemperatureDto with _$TemperatureDto {
  const factory TemperatureDto({
    TemperatureValueObjectDto? metric,
    TemperatureValueObjectDto? imperial,
  }) = _TemperatureDto;

  const TemperatureDto._();

  factory TemperatureDto.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDtoFromJson(json);
}

@Freezed(
  toJson: false,
)
class TemperatureValueObjectDto with _$TemperatureValueObjectDto {
  const factory TemperatureValueObjectDto({
    @Default(0.0) double value,
    @Default('') String unit,
  }) = _TemperatureValueObjectDto;

  const TemperatureValueObjectDto._();

  factory TemperatureValueObjectDto.fromJson(Map<String, dynamic> json) =>
      _$TemperatureValueObjectDtoFromJson(json);
}
