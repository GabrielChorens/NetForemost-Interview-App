import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';

part 'city_forecast.freezed.dart';

@freezed
class CityForecast with _$CityForecast {
  const factory CityForecast({
    required String cityName,
    required int cityId,
    String? description,
    required String temperature,
    required String weatherIcon,
    required String date,
    @Default(false) bool isDayTime,
  }) = _CityForecast;

  const CityForecast._();

  City toCity() {
    return City(cityName: cityName, cityId: cityId);
  }
}
