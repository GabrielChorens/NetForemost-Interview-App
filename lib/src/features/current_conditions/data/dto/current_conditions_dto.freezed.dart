// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_conditions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentConditionsDto _$CurrentConditionsDtoFromJson(Map<String, dynamic> json) {
  return _CurrentConditionsDto.fromJson(json);
}

/// @nodoc
mixin _$CurrentConditionsDto {
  int get weatherIcon => throw _privateConstructorUsedError;
  String get weatherText => throw _privateConstructorUsedError;
  String get localObservationDateTime => throw _privateConstructorUsedError;
  bool get isDayTime => throw _privateConstructorUsedError;
  bool get hasPrecipitation => throw _privateConstructorUsedError;
  TemperatureDto? get temperature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentConditionsDtoCopyWith<CurrentConditionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentConditionsDtoCopyWith<$Res> {
  factory $CurrentConditionsDtoCopyWith(CurrentConditionsDto value,
          $Res Function(CurrentConditionsDto) then) =
      _$CurrentConditionsDtoCopyWithImpl<$Res, CurrentConditionsDto>;
  @useResult
  $Res call(
      {int weatherIcon,
      String weatherText,
      String localObservationDateTime,
      bool isDayTime,
      bool hasPrecipitation,
      TemperatureDto? temperature});

  $TemperatureDtoCopyWith<$Res>? get temperature;
}

/// @nodoc
class _$CurrentConditionsDtoCopyWithImpl<$Res,
        $Val extends CurrentConditionsDto>
    implements $CurrentConditionsDtoCopyWith<$Res> {
  _$CurrentConditionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherIcon = null,
    Object? weatherText = null,
    Object? localObservationDateTime = null,
    Object? isDayTime = null,
    Object? hasPrecipitation = null,
    Object? temperature = freezed,
  }) {
    return _then(_value.copyWith(
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as int,
      weatherText: null == weatherText
          ? _value.weatherText
          : weatherText // ignore: cast_nullable_to_non_nullable
              as String,
      localObservationDateTime: null == localObservationDateTime
          ? _value.localObservationDateTime
          : localObservationDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      isDayTime: null == isDayTime
          ? _value.isDayTime
          : isDayTime // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrecipitation: null == hasPrecipitation
          ? _value.hasPrecipitation
          : hasPrecipitation // ignore: cast_nullable_to_non_nullable
              as bool,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as TemperatureDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureDtoCopyWith<$Res>? get temperature {
    if (_value.temperature == null) {
      return null;
    }

    return $TemperatureDtoCopyWith<$Res>(_value.temperature!, (value) {
      return _then(_value.copyWith(temperature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentConditionsDtoImplCopyWith<$Res>
    implements $CurrentConditionsDtoCopyWith<$Res> {
  factory _$$CurrentConditionsDtoImplCopyWith(_$CurrentConditionsDtoImpl value,
          $Res Function(_$CurrentConditionsDtoImpl) then) =
      __$$CurrentConditionsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int weatherIcon,
      String weatherText,
      String localObservationDateTime,
      bool isDayTime,
      bool hasPrecipitation,
      TemperatureDto? temperature});

  @override
  $TemperatureDtoCopyWith<$Res>? get temperature;
}

/// @nodoc
class __$$CurrentConditionsDtoImplCopyWithImpl<$Res>
    extends _$CurrentConditionsDtoCopyWithImpl<$Res, _$CurrentConditionsDtoImpl>
    implements _$$CurrentConditionsDtoImplCopyWith<$Res> {
  __$$CurrentConditionsDtoImplCopyWithImpl(_$CurrentConditionsDtoImpl _value,
      $Res Function(_$CurrentConditionsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherIcon = null,
    Object? weatherText = null,
    Object? localObservationDateTime = null,
    Object? isDayTime = null,
    Object? hasPrecipitation = null,
    Object? temperature = freezed,
  }) {
    return _then(_$CurrentConditionsDtoImpl(
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as int,
      weatherText: null == weatherText
          ? _value.weatherText
          : weatherText // ignore: cast_nullable_to_non_nullable
              as String,
      localObservationDateTime: null == localObservationDateTime
          ? _value.localObservationDateTime
          : localObservationDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      isDayTime: null == isDayTime
          ? _value.isDayTime
          : isDayTime // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrecipitation: null == hasPrecipitation
          ? _value.hasPrecipitation
          : hasPrecipitation // ignore: cast_nullable_to_non_nullable
              as bool,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as TemperatureDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CurrentConditionsDtoImpl extends _CurrentConditionsDto {
  const _$CurrentConditionsDtoImpl(
      {this.weatherIcon = 1,
      this.weatherText = '',
      this.localObservationDateTime = '',
      this.isDayTime = false,
      this.hasPrecipitation = false,
      this.temperature})
      : super._();

  factory _$CurrentConditionsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentConditionsDtoImplFromJson(json);

  @override
  @JsonKey()
  final int weatherIcon;
  @override
  @JsonKey()
  final String weatherText;
  @override
  @JsonKey()
  final String localObservationDateTime;
  @override
  @JsonKey()
  final bool isDayTime;
  @override
  @JsonKey()
  final bool hasPrecipitation;
  @override
  final TemperatureDto? temperature;

  @override
  String toString() {
    return 'CurrentConditionsDto(weatherIcon: $weatherIcon, weatherText: $weatherText, localObservationDateTime: $localObservationDateTime, isDayTime: $isDayTime, hasPrecipitation: $hasPrecipitation, temperature: $temperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentConditionsDtoImpl &&
            (identical(other.weatherIcon, weatherIcon) ||
                other.weatherIcon == weatherIcon) &&
            (identical(other.weatherText, weatherText) ||
                other.weatherText == weatherText) &&
            (identical(
                    other.localObservationDateTime, localObservationDateTime) ||
                other.localObservationDateTime == localObservationDateTime) &&
            (identical(other.isDayTime, isDayTime) ||
                other.isDayTime == isDayTime) &&
            (identical(other.hasPrecipitation, hasPrecipitation) ||
                other.hasPrecipitation == hasPrecipitation) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weatherIcon, weatherText,
      localObservationDateTime, isDayTime, hasPrecipitation, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentConditionsDtoImplCopyWith<_$CurrentConditionsDtoImpl>
      get copyWith =>
          __$$CurrentConditionsDtoImplCopyWithImpl<_$CurrentConditionsDtoImpl>(
              this, _$identity);
}

abstract class _CurrentConditionsDto extends CurrentConditionsDto {
  const factory _CurrentConditionsDto(
      {final int weatherIcon,
      final String weatherText,
      final String localObservationDateTime,
      final bool isDayTime,
      final bool hasPrecipitation,
      final TemperatureDto? temperature}) = _$CurrentConditionsDtoImpl;
  const _CurrentConditionsDto._() : super._();

  factory _CurrentConditionsDto.fromJson(Map<String, dynamic> json) =
      _$CurrentConditionsDtoImpl.fromJson;

  @override
  int get weatherIcon;
  @override
  String get weatherText;
  @override
  String get localObservationDateTime;
  @override
  bool get isDayTime;
  @override
  bool get hasPrecipitation;
  @override
  TemperatureDto? get temperature;
  @override
  @JsonKey(ignore: true)
  _$$CurrentConditionsDtoImplCopyWith<_$CurrentConditionsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TemperatureDto _$TemperatureDtoFromJson(Map<String, dynamic> json) {
  return _TemperatureDto.fromJson(json);
}

/// @nodoc
mixin _$TemperatureDto {
  TemperatureValueObjectDto? get metric => throw _privateConstructorUsedError;
  TemperatureValueObjectDto? get imperial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemperatureDtoCopyWith<TemperatureDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureDtoCopyWith<$Res> {
  factory $TemperatureDtoCopyWith(
          TemperatureDto value, $Res Function(TemperatureDto) then) =
      _$TemperatureDtoCopyWithImpl<$Res, TemperatureDto>;
  @useResult
  $Res call(
      {TemperatureValueObjectDto? metric, TemperatureValueObjectDto? imperial});

  $TemperatureValueObjectDtoCopyWith<$Res>? get metric;
  $TemperatureValueObjectDtoCopyWith<$Res>? get imperial;
}

/// @nodoc
class _$TemperatureDtoCopyWithImpl<$Res, $Val extends TemperatureDto>
    implements $TemperatureDtoCopyWith<$Res> {
  _$TemperatureDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metric = freezed,
    Object? imperial = freezed,
  }) {
    return _then(_value.copyWith(
      metric: freezed == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as TemperatureValueObjectDto?,
      imperial: freezed == imperial
          ? _value.imperial
          : imperial // ignore: cast_nullable_to_non_nullable
              as TemperatureValueObjectDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureValueObjectDtoCopyWith<$Res>? get metric {
    if (_value.metric == null) {
      return null;
    }

    return $TemperatureValueObjectDtoCopyWith<$Res>(_value.metric!, (value) {
      return _then(_value.copyWith(metric: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureValueObjectDtoCopyWith<$Res>? get imperial {
    if (_value.imperial == null) {
      return null;
    }

    return $TemperatureValueObjectDtoCopyWith<$Res>(_value.imperial!, (value) {
      return _then(_value.copyWith(imperial: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TemperatureDtoImplCopyWith<$Res>
    implements $TemperatureDtoCopyWith<$Res> {
  factory _$$TemperatureDtoImplCopyWith(_$TemperatureDtoImpl value,
          $Res Function(_$TemperatureDtoImpl) then) =
      __$$TemperatureDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TemperatureValueObjectDto? metric, TemperatureValueObjectDto? imperial});

  @override
  $TemperatureValueObjectDtoCopyWith<$Res>? get metric;
  @override
  $TemperatureValueObjectDtoCopyWith<$Res>? get imperial;
}

/// @nodoc
class __$$TemperatureDtoImplCopyWithImpl<$Res>
    extends _$TemperatureDtoCopyWithImpl<$Res, _$TemperatureDtoImpl>
    implements _$$TemperatureDtoImplCopyWith<$Res> {
  __$$TemperatureDtoImplCopyWithImpl(
      _$TemperatureDtoImpl _value, $Res Function(_$TemperatureDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metric = freezed,
    Object? imperial = freezed,
  }) {
    return _then(_$TemperatureDtoImpl(
      metric: freezed == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as TemperatureValueObjectDto?,
      imperial: freezed == imperial
          ? _value.imperial
          : imperial // ignore: cast_nullable_to_non_nullable
              as TemperatureValueObjectDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TemperatureDtoImpl extends _TemperatureDto {
  const _$TemperatureDtoImpl({this.metric, this.imperial}) : super._();

  factory _$TemperatureDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureDtoImplFromJson(json);

  @override
  final TemperatureValueObjectDto? metric;
  @override
  final TemperatureValueObjectDto? imperial;

  @override
  String toString() {
    return 'TemperatureDto(metric: $metric, imperial: $imperial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureDtoImpl &&
            (identical(other.metric, metric) || other.metric == metric) &&
            (identical(other.imperial, imperial) ||
                other.imperial == imperial));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metric, imperial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureDtoImplCopyWith<_$TemperatureDtoImpl> get copyWith =>
      __$$TemperatureDtoImplCopyWithImpl<_$TemperatureDtoImpl>(
          this, _$identity);
}

abstract class _TemperatureDto extends TemperatureDto {
  const factory _TemperatureDto(
      {final TemperatureValueObjectDto? metric,
      final TemperatureValueObjectDto? imperial}) = _$TemperatureDtoImpl;
  const _TemperatureDto._() : super._();

  factory _TemperatureDto.fromJson(Map<String, dynamic> json) =
      _$TemperatureDtoImpl.fromJson;

  @override
  TemperatureValueObjectDto? get metric;
  @override
  TemperatureValueObjectDto? get imperial;
  @override
  @JsonKey(ignore: true)
  _$$TemperatureDtoImplCopyWith<_$TemperatureDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemperatureValueObjectDto _$TemperatureValueObjectDtoFromJson(
    Map<String, dynamic> json) {
  return _TemperatureValueObjectDto.fromJson(json);
}

/// @nodoc
mixin _$TemperatureValueObjectDto {
  double get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemperatureValueObjectDtoCopyWith<TemperatureValueObjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureValueObjectDtoCopyWith<$Res> {
  factory $TemperatureValueObjectDtoCopyWith(TemperatureValueObjectDto value,
          $Res Function(TemperatureValueObjectDto) then) =
      _$TemperatureValueObjectDtoCopyWithImpl<$Res, TemperatureValueObjectDto>;
  @useResult
  $Res call({double value, String unit});
}

/// @nodoc
class _$TemperatureValueObjectDtoCopyWithImpl<$Res,
        $Val extends TemperatureValueObjectDto>
    implements $TemperatureValueObjectDtoCopyWith<$Res> {
  _$TemperatureValueObjectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureValueObjectDtoImplCopyWith<$Res>
    implements $TemperatureValueObjectDtoCopyWith<$Res> {
  factory _$$TemperatureValueObjectDtoImplCopyWith(
          _$TemperatureValueObjectDtoImpl value,
          $Res Function(_$TemperatureValueObjectDtoImpl) then) =
      __$$TemperatureValueObjectDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String unit});
}

/// @nodoc
class __$$TemperatureValueObjectDtoImplCopyWithImpl<$Res>
    extends _$TemperatureValueObjectDtoCopyWithImpl<$Res,
        _$TemperatureValueObjectDtoImpl>
    implements _$$TemperatureValueObjectDtoImplCopyWith<$Res> {
  __$$TemperatureValueObjectDtoImplCopyWithImpl(
      _$TemperatureValueObjectDtoImpl _value,
      $Res Function(_$TemperatureValueObjectDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_$TemperatureValueObjectDtoImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TemperatureValueObjectDtoImpl extends _TemperatureValueObjectDto {
  const _$TemperatureValueObjectDtoImpl({this.value = 0.0, this.unit = ''})
      : super._();

  factory _$TemperatureValueObjectDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureValueObjectDtoImplFromJson(json);

  @override
  @JsonKey()
  final double value;
  @override
  @JsonKey()
  final String unit;

  @override
  String toString() {
    return 'TemperatureValueObjectDto(value: $value, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureValueObjectDtoImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureValueObjectDtoImplCopyWith<_$TemperatureValueObjectDtoImpl>
      get copyWith => __$$TemperatureValueObjectDtoImplCopyWithImpl<
          _$TemperatureValueObjectDtoImpl>(this, _$identity);
}

abstract class _TemperatureValueObjectDto extends TemperatureValueObjectDto {
  const factory _TemperatureValueObjectDto(
      {final double value,
      final String unit}) = _$TemperatureValueObjectDtoImpl;
  const _TemperatureValueObjectDto._() : super._();

  factory _TemperatureValueObjectDto.fromJson(Map<String, dynamic> json) =
      _$TemperatureValueObjectDtoImpl.fromJson;

  @override
  double get value;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$TemperatureValueObjectDtoImplCopyWith<_$TemperatureValueObjectDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
