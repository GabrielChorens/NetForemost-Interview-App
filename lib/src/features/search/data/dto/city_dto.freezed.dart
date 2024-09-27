// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityDto _$CityDtoFromJson(Map<String, dynamic> json) {
  return _CityDto.fromJson(json);
}

/// @nodoc
mixin _$CityDto {
  @StringToNullableIntConverter()
  int? get key => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get localizedName => throw _privateConstructorUsedError;
  CountryDto? get country => throw _privateConstructorUsedError;
  AdministrativeAreaDto? get administrativeArea =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityDtoCopyWith<CityDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDtoCopyWith<$Res> {
  factory $CityDtoCopyWith(CityDto value, $Res Function(CityDto) then) =
      _$CityDtoCopyWithImpl<$Res, CityDto>;
  @useResult
  $Res call(
      {@StringToNullableIntConverter() int? key,
      String? type,
      String localizedName,
      CountryDto? country,
      AdministrativeAreaDto? administrativeArea});

  $CountryDtoCopyWith<$Res>? get country;
  $AdministrativeAreaDtoCopyWith<$Res>? get administrativeArea;
}

/// @nodoc
class _$CityDtoCopyWithImpl<$Res, $Val extends CityDto>
    implements $CityDtoCopyWith<$Res> {
  _$CityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? type = freezed,
    Object? localizedName = null,
    Object? country = freezed,
    Object? administrativeArea = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryDto?,
      administrativeArea: freezed == administrativeArea
          ? _value.administrativeArea
          : administrativeArea // ignore: cast_nullable_to_non_nullable
              as AdministrativeAreaDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryDtoCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryDtoCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdministrativeAreaDtoCopyWith<$Res>? get administrativeArea {
    if (_value.administrativeArea == null) {
      return null;
    }

    return $AdministrativeAreaDtoCopyWith<$Res>(_value.administrativeArea!,
        (value) {
      return _then(_value.copyWith(administrativeArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityDtoImplCopyWith<$Res> implements $CityDtoCopyWith<$Res> {
  factory _$$CityDtoImplCopyWith(
          _$CityDtoImpl value, $Res Function(_$CityDtoImpl) then) =
      __$$CityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringToNullableIntConverter() int? key,
      String? type,
      String localizedName,
      CountryDto? country,
      AdministrativeAreaDto? administrativeArea});

  @override
  $CountryDtoCopyWith<$Res>? get country;
  @override
  $AdministrativeAreaDtoCopyWith<$Res>? get administrativeArea;
}

/// @nodoc
class __$$CityDtoImplCopyWithImpl<$Res>
    extends _$CityDtoCopyWithImpl<$Res, _$CityDtoImpl>
    implements _$$CityDtoImplCopyWith<$Res> {
  __$$CityDtoImplCopyWithImpl(
      _$CityDtoImpl _value, $Res Function(_$CityDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? type = freezed,
    Object? localizedName = null,
    Object? country = freezed,
    Object? administrativeArea = freezed,
  }) {
    return _then(_$CityDtoImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryDto?,
      administrativeArea: freezed == administrativeArea
          ? _value.administrativeArea
          : administrativeArea // ignore: cast_nullable_to_non_nullable
              as AdministrativeAreaDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CityDtoImpl extends _CityDto {
  const _$CityDtoImpl(
      {@StringToNullableIntConverter() this.key,
      this.type,
      this.localizedName = '',
      this.country,
      this.administrativeArea})
      : super._();

  factory _$CityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDtoImplFromJson(json);

  @override
  @StringToNullableIntConverter()
  final int? key;
  @override
  final String? type;
  @override
  @JsonKey()
  final String localizedName;
  @override
  final CountryDto? country;
  @override
  final AdministrativeAreaDto? administrativeArea;

  @override
  String toString() {
    return 'CityDto(key: $key, type: $type, localizedName: $localizedName, country: $country, administrativeArea: $administrativeArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.administrativeArea, administrativeArea) ||
                other.administrativeArea == administrativeArea));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, type, localizedName, country, administrativeArea);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDtoImplCopyWith<_$CityDtoImpl> get copyWith =>
      __$$CityDtoImplCopyWithImpl<_$CityDtoImpl>(this, _$identity);
}

abstract class _CityDto extends CityDto {
  const factory _CityDto(
      {@StringToNullableIntConverter() final int? key,
      final String? type,
      final String localizedName,
      final CountryDto? country,
      final AdministrativeAreaDto? administrativeArea}) = _$CityDtoImpl;
  const _CityDto._() : super._();

  factory _CityDto.fromJson(Map<String, dynamic> json) = _$CityDtoImpl.fromJson;

  @override
  @StringToNullableIntConverter()
  int? get key;
  @override
  String? get type;
  @override
  String get localizedName;
  @override
  CountryDto? get country;
  @override
  AdministrativeAreaDto? get administrativeArea;
  @override
  @JsonKey(ignore: true)
  _$$CityDtoImplCopyWith<_$CityDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) {
  return _CountryDto.fromJson(json);
}

/// @nodoc
mixin _$CountryDto {
  String? get id => throw _privateConstructorUsedError;
  String? get localizedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryDtoCopyWith<CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDtoCopyWith<$Res> {
  factory $CountryDtoCopyWith(
          CountryDto value, $Res Function(CountryDto) then) =
      _$CountryDtoCopyWithImpl<$Res, CountryDto>;
  @useResult
  $Res call({String? id, String? localizedName});
}

/// @nodoc
class _$CountryDtoCopyWithImpl<$Res, $Val extends CountryDto>
    implements $CountryDtoCopyWith<$Res> {
  _$CountryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      localizedName: freezed == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryDtoImplCopyWith<$Res>
    implements $CountryDtoCopyWith<$Res> {
  factory _$$CountryDtoImplCopyWith(
          _$CountryDtoImpl value, $Res Function(_$CountryDtoImpl) then) =
      __$$CountryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? localizedName});
}

/// @nodoc
class __$$CountryDtoImplCopyWithImpl<$Res>
    extends _$CountryDtoCopyWithImpl<$Res, _$CountryDtoImpl>
    implements _$$CountryDtoImplCopyWith<$Res> {
  __$$CountryDtoImplCopyWithImpl(
      _$CountryDtoImpl _value, $Res Function(_$CountryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_$CountryDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      localizedName: freezed == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CountryDtoImpl implements _CountryDto {
  const _$CountryDtoImpl({this.id, this.localizedName});

  factory _$CountryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? localizedName;

  @override
  String toString() {
    return 'CountryDto(id: $id, localizedName: $localizedName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, localizedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryDtoImplCopyWith<_$CountryDtoImpl> get copyWith =>
      __$$CountryDtoImplCopyWithImpl<_$CountryDtoImpl>(this, _$identity);
}

abstract class _CountryDto implements CountryDto {
  const factory _CountryDto({final String? id, final String? localizedName}) =
      _$CountryDtoImpl;

  factory _CountryDto.fromJson(Map<String, dynamic> json) =
      _$CountryDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get localizedName;
  @override
  @JsonKey(ignore: true)
  _$$CountryDtoImplCopyWith<_$CountryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdministrativeAreaDto _$AdministrativeAreaDtoFromJson(
    Map<String, dynamic> json) {
  return _AdministrativeAreaDto.fromJson(json);
}

/// @nodoc
mixin _$AdministrativeAreaDto {
  String? get id => throw _privateConstructorUsedError;
  String? get localizedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdministrativeAreaDtoCopyWith<AdministrativeAreaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministrativeAreaDtoCopyWith<$Res> {
  factory $AdministrativeAreaDtoCopyWith(AdministrativeAreaDto value,
          $Res Function(AdministrativeAreaDto) then) =
      _$AdministrativeAreaDtoCopyWithImpl<$Res, AdministrativeAreaDto>;
  @useResult
  $Res call({String? id, String? localizedName});
}

/// @nodoc
class _$AdministrativeAreaDtoCopyWithImpl<$Res,
        $Val extends AdministrativeAreaDto>
    implements $AdministrativeAreaDtoCopyWith<$Res> {
  _$AdministrativeAreaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      localizedName: freezed == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdministrativeAreaDtoImplCopyWith<$Res>
    implements $AdministrativeAreaDtoCopyWith<$Res> {
  factory _$$AdministrativeAreaDtoImplCopyWith(
          _$AdministrativeAreaDtoImpl value,
          $Res Function(_$AdministrativeAreaDtoImpl) then) =
      __$$AdministrativeAreaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? localizedName});
}

/// @nodoc
class __$$AdministrativeAreaDtoImplCopyWithImpl<$Res>
    extends _$AdministrativeAreaDtoCopyWithImpl<$Res,
        _$AdministrativeAreaDtoImpl>
    implements _$$AdministrativeAreaDtoImplCopyWith<$Res> {
  __$$AdministrativeAreaDtoImplCopyWithImpl(_$AdministrativeAreaDtoImpl _value,
      $Res Function(_$AdministrativeAreaDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_$AdministrativeAreaDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      localizedName: freezed == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$AdministrativeAreaDtoImpl implements _AdministrativeAreaDto {
  const _$AdministrativeAreaDtoImpl({this.id, this.localizedName});

  factory _$AdministrativeAreaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdministrativeAreaDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? localizedName;

  @override
  String toString() {
    return 'AdministrativeAreaDto(id: $id, localizedName: $localizedName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministrativeAreaDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, localizedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdministrativeAreaDtoImplCopyWith<_$AdministrativeAreaDtoImpl>
      get copyWith => __$$AdministrativeAreaDtoImplCopyWithImpl<
          _$AdministrativeAreaDtoImpl>(this, _$identity);
}

abstract class _AdministrativeAreaDto implements AdministrativeAreaDto {
  const factory _AdministrativeAreaDto(
      {final String? id,
      final String? localizedName}) = _$AdministrativeAreaDtoImpl;

  factory _AdministrativeAreaDto.fromJson(Map<String, dynamic> json) =
      _$AdministrativeAreaDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get localizedName;
  @override
  @JsonKey(ignore: true)
  _$$AdministrativeAreaDtoImplCopyWith<_$AdministrativeAreaDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
