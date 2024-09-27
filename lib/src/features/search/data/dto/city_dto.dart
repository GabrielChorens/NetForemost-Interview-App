import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_flutter/src/core/utils/parsers/json_parsers.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';

part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@Freezed(
  toJson: false,
)
class CityDto with _$CityDto {
  const factory CityDto({
    @StringToNullableIntConverter() int? key,
    String? type,
    @Default('') String localizedName,
    CountryDto? country,
    AdministrativeAreaDto? administrativeArea,
  }) = _CityDto;

  const CityDto._();

  City toDomain() {
    if (localizedName.isNotEmpty && key != null) {
      return City(
        cityName: localizedName,
        cityId: key!,
      );
    }
    throw ArgumentError('Invalid city dto');
  }

  factory CityDto.fromJson(Map<String, dynamic> json) =>
      _$CityDtoFromJson(json);
}

@Freezed(
  toJson: false,
)
class CountryDto with _$CountryDto {
  const factory CountryDto({
    String? id,
    String? localizedName,
  }) = _CountryDto;

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);
}

@Freezed(
  toJson: false,
)
class AdministrativeAreaDto with _$AdministrativeAreaDto {
  const factory AdministrativeAreaDto({
    String? id,
    String? localizedName,
  }) = _AdministrativeAreaDto;

  factory AdministrativeAreaDto.fromJson(Map<String, dynamic> json) =>
      _$AdministrativeAreaDtoFromJson(json);
}
