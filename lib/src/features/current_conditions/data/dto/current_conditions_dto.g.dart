// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_conditions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentConditionsDtoImpl _$$CurrentConditionsDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CurrentConditionsDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CurrentConditionsDtoImpl(
          weatherIcon:
              $checkedConvert('WeatherIcon', (v) => (v as num?)?.toInt() ?? 1),
          weatherText:
              $checkedConvert('WeatherText', (v) => v as String? ?? ''),
          localObservationDateTime: $checkedConvert(
              'LocalObservationDateTime', (v) => v as String? ?? ''),
          isDayTime: $checkedConvert('IsDayTime', (v) => v as bool? ?? false),
          hasPrecipitation:
              $checkedConvert('HasPrecipitation', (v) => v as bool? ?? false),
          temperature: $checkedConvert(
              'Temperature',
              (v) => v == null
                  ? null
                  : TemperatureDto.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'weatherIcon': 'WeatherIcon',
        'weatherText': 'WeatherText',
        'localObservationDateTime': 'LocalObservationDateTime',
        'isDayTime': 'IsDayTime',
        'hasPrecipitation': 'HasPrecipitation',
        'temperature': 'Temperature'
      },
    );

_$TemperatureDtoImpl _$$TemperatureDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TemperatureDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$TemperatureDtoImpl(
          metric: $checkedConvert(
              'Metric',
              (v) => v == null
                  ? null
                  : TemperatureValueObjectDto.fromJson(
                      v as Map<String, dynamic>)),
          imperial: $checkedConvert(
              'Imperial',
              (v) => v == null
                  ? null
                  : TemperatureValueObjectDto.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'metric': 'Metric', 'imperial': 'Imperial'},
    );

_$TemperatureValueObjectDtoImpl _$$TemperatureValueObjectDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TemperatureValueObjectDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$TemperatureValueObjectDtoImpl(
          value:
              $checkedConvert('Value', (v) => (v as num?)?.toDouble() ?? 0.0),
          unit: $checkedConvert('Unit', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {'value': 'Value', 'unit': 'Unit'},
    );
