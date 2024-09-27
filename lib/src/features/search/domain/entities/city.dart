import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    required String cityName,
    required int cityId,
    String? description,
  }) = _City;

  @override
  String toString() {
    return cityName;
  }

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
