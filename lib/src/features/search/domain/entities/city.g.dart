// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$CityImpl',
      json,
      ($checkedConvert) {
        final val = _$CityImpl(
          cityName: $checkedConvert('CityName', (v) => v as String),
          cityId: $checkedConvert('CityId', (v) => (v as num).toInt()),
          description: $checkedConvert('Description', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'cityName': 'CityName',
        'cityId': 'CityId',
        'description': 'Description'
      },
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) {
  final val = <String, dynamic>{
    'CityName': instance.cityName,
    'CityId': instance.cityId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Description', instance.description);
  return val;
}
