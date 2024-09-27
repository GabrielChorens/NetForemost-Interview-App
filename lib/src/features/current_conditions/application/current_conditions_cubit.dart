import 'package:injectable/injectable.dart';
import 'package:interview_flutter/src/core/exceptions/api_exceptions.dart';
import 'package:interview_flutter/src/core/services/storage_service/storage_service.dart';
import 'package:interview_flutter/src/core/utils/async_cubit_state_management/async_cubit_state_management.dart';
import 'package:interview_flutter/src/features/current_conditions/data/repository/current_conditions_repository.dart';
import 'package:interview_flutter/src/features/current_conditions/domain/city_forecast.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';

///Cubit to fetch the current conditions for the stored cities or when adding
///a new city
@injectable
class CurrentConditionsCubit
    extends AsyncCubit<ApiExceptions, List<CityForecast>> {
  CurrentConditionsCubit(
    this._citiesStorageRepository,
    this._currentConditionsRepository,
  ) : super(const AsyncState.initial()) {
    initialize();
  }

  final CitiesStorageRepository _citiesStorageRepository;
  final CurrentConditionsRepository _currentConditionsRepository;

  ///Initialize method attempts to fetch the current conditions for the stored cities
  ///
  /// If there are no stored cities, it will emit an empty list
  Future<void> initialize() async {
    final storedCities = _citiesStorageRepository.getCities();
    if (storedCities.isEmpty) {
      return emit(const AsyncState.success(data: []));
    }

    final futures = storedCities.map((city) {
      final result = _currentConditionsRepository.getCurrentConditions(
        city: city,
      );
      return result;
    });

    final results = await Future.wait(futures);
    final data = results.fold<List<CityForecast>>(
      [],
      (previousValue, element) {
        if (element.isRight()) {
          return [
            ...previousValue,
            element.getOrElse(
              //Should never happen
              (_) => throw ArgumentError(),
            ),
          ];
        } else {
          return previousValue;
        }
      },
    );

    return emit(AsyncState.success(data: data));
  }

  ///Method to fetch the current conditions when adding a new city
  Future<void> fetchCurrentConditions(City city) async {
    final currentCities = state.data ?? [];

    final isAlreadyInList =
        currentCities.any((element) => element.cityName == city.cityName);

    print('isAlreadyInList: $isAlreadyInList');

    ///Check if the city is already in the list to avoid duplicates
    if (isAlreadyInList) {
      return;
    }
    emit(const AsyncState.loading());

    final result = await _currentConditionsRepository.getCurrentConditions(
      city: city,
    );

    print('result: ${result.isRight()}');
    result.fold(
      (error) => emit(AsyncState.error(error: error)),
      (cityForecast) {
        final data = [...currentCities, cityForecast];
        _citiesStorageRepository
            .saveCities(data.map((e) => e.toCity()).toList());
        emit(AsyncState.success(data: data));
      },
    );
  }
}
