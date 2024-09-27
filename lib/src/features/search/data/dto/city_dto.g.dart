// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityDtoImpl _$$CityDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CityDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CityDtoImpl(
          key: $checkedConvert(
              'Key',
              (v) =>
                  const StringToNullableIntConverter().fromJson(v as String?)),
          type: $checkedConvert('Type', (v) => v as String?),
          localizedName:
              $checkedConvert('LocalizedName', (v) => v as String? ?? ''),
          country: $checkedConvert(
              'Country',
              (v) => v == null
                  ? null
                  : CountryDto.fromJson(v as Map<String, dynamic>)),
          administrativeArea: $checkedConvert(
              'AdministrativeArea',
              (v) => v == null
                  ? null
                  : AdministrativeAreaDto.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'key': 'Key',
        'type': 'Type',
        'localizedName': 'LocalizedName',
        'country': 'Country',
        'administrativeArea': 'AdministrativeArea'
      },
    );

_$CountryDtoImpl _$$CountryDtoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CountryDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CountryDtoImpl(
          id: $checkedConvert('Id', (v) => v as String?),
          localizedName: $checkedConvert('LocalizedName', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'Id', 'localizedName': 'LocalizedName'},
    );

_$AdministrativeAreaDtoImpl _$$AdministrativeAreaDtoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AdministrativeAreaDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$AdministrativeAreaDtoImpl(
          id: $checkedConvert('Id', (v) => v as String?),
          localizedName: $checkedConvert('LocalizedName', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'Id', 'localizedName': 'LocalizedName'},
    );
