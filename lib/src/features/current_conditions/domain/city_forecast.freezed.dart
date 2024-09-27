// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityForecast {
  String get cityName => throw _privateConstructorUsedError;
  int get cityId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get temperature => throw _privateConstructorUsedError;
  String get weatherIcon => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get isDayTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityForecastCopyWith<CityForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityForecastCopyWith<$Res> {
  factory $CityForecastCopyWith(
          CityForecast value, $Res Function(CityForecast) then) =
      _$CityForecastCopyWithImpl<$Res, CityForecast>;
  @useResult
  $Res call(
      {String cityName,
      int cityId,
      String? description,
      String temperature,
      String weatherIcon,
      String date,
      bool isDayTime});
}

/// @nodoc
class _$CityForecastCopyWithImpl<$Res, $Val extends CityForecast>
    implements $CityForecastCopyWith<$Res> {
  _$CityForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? cityId = null,
    Object? description = freezed,
    Object? temperature = null,
    Object? weatherIcon = null,
    Object? date = null,
    Object? isDayTime = null,
  }) {
    return _then(_value.copyWith(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isDayTime: null == isDayTime
          ? _value.isDayTime
          : isDayTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityForecastImplCopyWith<$Res>
    implements $CityForecastCopyWith<$Res> {
  factory _$$CityForecastImplCopyWith(
          _$CityForecastImpl value, $Res Function(_$CityForecastImpl) then) =
      __$$CityForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cityName,
      int cityId,
      String? description,
      String temperature,
      String weatherIcon,
      String date,
      bool isDayTime});
}

/// @nodoc
class __$$CityForecastImplCopyWithImpl<$Res>
    extends _$CityForecastCopyWithImpl<$Res, _$CityForecastImpl>
    implements _$$CityForecastImplCopyWith<$Res> {
  __$$CityForecastImplCopyWithImpl(
      _$CityForecastImpl _value, $Res Function(_$CityForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? cityId = null,
    Object? description = freezed,
    Object? temperature = null,
    Object? weatherIcon = null,
    Object? date = null,
    Object? isDayTime = null,
  }) {
    return _then(_$CityForecastImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isDayTime: null == isDayTime
          ? _value.isDayTime
          : isDayTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CityForecastImpl extends _CityForecast {
  const _$CityForecastImpl(
      {required this.cityName,
      required this.cityId,
      this.description,
      required this.temperature,
      required this.weatherIcon,
      required this.date,
      this.isDayTime = false})
      : super._();

  @override
  final String cityName;
  @override
  final int cityId;
  @override
  final String? description;
  @override
  final String temperature;
  @override
  final String weatherIcon;
  @override
  final String date;
  @override
  @JsonKey()
  final bool isDayTime;

  @override
  String toString() {
    return 'CityForecast(cityName: $cityName, cityId: $cityId, description: $description, temperature: $temperature, weatherIcon: $weatherIcon, date: $date, isDayTime: $isDayTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityForecastImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherIcon, weatherIcon) ||
                other.weatherIcon == weatherIcon) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isDayTime, isDayTime) ||
                other.isDayTime == isDayTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName, cityId, description,
      temperature, weatherIcon, date, isDayTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityForecastImplCopyWith<_$CityForecastImpl> get copyWith =>
      __$$CityForecastImplCopyWithImpl<_$CityForecastImpl>(this, _$identity);
}

abstract class _CityForecast extends CityForecast {
  const factory _CityForecast(
      {required final String cityName,
      required final int cityId,
      final String? description,
      required final String temperature,
      required final String weatherIcon,
      required final String date,
      final bool isDayTime}) = _$CityForecastImpl;
  const _CityForecast._() : super._();

  @override
  String get cityName;
  @override
  int get cityId;
  @override
  String? get description;
  @override
  String get temperature;
  @override
  String get weatherIcon;
  @override
  String get date;
  @override
  bool get isDayTime;
  @override
  @JsonKey(ignore: true)
  _$$CityForecastImplCopyWith<_$CityForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
