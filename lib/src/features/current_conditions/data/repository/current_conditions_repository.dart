import 'package:injectable/injectable.dart';
import 'package:interview_flutter/src/core/api/url.dart';
import 'package:interview_flutter/src/core/services/network_service/network_service.dart';
import 'package:interview_flutter/src/core/services/storage_service/storage_service.dart';
import 'package:interview_flutter/src/features/current_conditions/data/dto/current_conditions_dto.dart';
import 'package:interview_flutter/src/features/current_conditions/data/dto/current_conditions_request_dto.dart';
import 'package:interview_flutter/src/features/current_conditions/domain/city_forecast.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';

enum TemperatureUnit {
  celsius('C°'),
  fahrenheit('F°');

  final String value;

  const TemperatureUnit(this.value);
}

@injectable
class CurrentConditionsRepository {
  const CurrentConditionsRepository(
    this._networkService,
    this._languageCodeRepository,
  );
  final NetworkService _networkService;
  final LanguageCodeRepository _languageCodeRepository;

  ///Fetches the current conditions for a city
  RepositoryRequest<CityForecast> getCurrentConditions({
    required City city,
    String? languageCode,
    TemperatureUnit? temperatureUnit,
  }) {
    final lang = languageCode ?? _languageCodeRepository.getLanguageCode();
    return _networkService.fetch<CityForecast>(
      currentConditionsUrl(locationKey: city.cityId.toString()),
      successDataParser: (json) {
        final response = json as List;
        final dto = CurrentConditionsDto.fromJson(
          response.first as Map<String, dynamic>,
        );

        final temperature = temperatureUnit == TemperatureUnit.celsius
            ? dto.temperature?.metric?.value
            : dto.temperature?.imperial?.value;

        final date = DateTime.tryParse(dto.localObservationDateTime);

        final unit = temperatureUnit ?? TemperatureUnit.celsius;

        return CityForecast(
          cityName: city.cityName,
          cityId: city.cityId,
          description: city.description,
          temperature: temperature.toStringRepresentation(unit),
          weatherIcon: dto.weatherIcon.toString(),
          date: date.toStringRepresentation(),
          isDayTime: dto.isDayTime,
        );
      },
      query: const CurrentConditionsRequestDto().toJson(language: lang),
    );
  }
}

extension on double? {
  String toStringRepresentation(TemperatureUnit unit) {
    if (this == null) {
      return ' - ';
    }
    return '${this?.toStringAsFixed(2)} ${unit.value}';
  }
}

extension on DateTime? {
  String toStringRepresentation() {
    final date = this?.toLocal();
    if (date == null) {
      return ' - ';
    }
    return date.hour < 12
        ? '${date.hour}:${date.minute} AM'
        : '${date.hour}:${date.minute} PM';
  }
}
