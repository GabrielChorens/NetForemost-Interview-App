import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:interview_flutter/src/core/exceptions/api_exceptions.dart';
import 'package:interview_flutter/src/core/services/storage_service/storage_service.dart';
import 'package:interview_flutter/src/core/utils/async_cubit_state_management/async_cubit_state_management.dart';
import 'package:interview_flutter/src/features/current_conditions/application/current_conditions_cubit.dart';
import 'package:interview_flutter/src/features/current_conditions/data/repository/current_conditions_repository.dart';
import 'package:interview_flutter/src/features/current_conditions/domain/city_forecast.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';
import 'package:mocktail/mocktail.dart';

class MockCitiesStorageRepository extends Mock
    implements CitiesStorageRepository {}

class MockCurrentConditionsRepository extends Mock
    implements CurrentConditionsRepository {}

void main() {
  late CurrentConditionsCubit cubit;
  late MockCitiesStorageRepository mockCitiesStorageRepository;
  late MockCurrentConditionsRepository mockCurrentConditionsRepository;

  setUp(() {
    mockCitiesStorageRepository = MockCitiesStorageRepository();
    mockCurrentConditionsRepository = MockCurrentConditionsRepository();
    cubit = CurrentConditionsCubit(
      mockCitiesStorageRepository,
      mockCurrentConditionsRepository,
    );
  });

  group('CurrentConditionsCubit', () {
    const city =
        City(cityId: 1, cityName: 'Test City', description: 'Test Description');
    const cityForecast = CityForecast(
      cityName: 'Test City',
      cityId: 1,
      description: 'Test Description',
      temperature: '25 C°',
      weatherIcon: '01',
      date: '2024-09-26T12:35:00-06:00',
      isDayTime: true,
    );

    blocTest<CurrentConditionsCubit,
        AsyncState<ApiExceptions, List<CityForecast>>>(
      'Initialize with saved data emitting correctly',
      build: () {
        when(() => mockCitiesStorageRepository.getCities()).thenReturn([city]);
        when(
          () => mockCurrentConditionsRepository.getCurrentConditions(
            city: city,
          ),
        ).thenAnswer((_) async => const Right(cityForecast));
        return cubit;
      },
      act: (cubit) => cubit.initialize(),
      expect: () => [
        const AsyncState<ApiExceptions, List<CityForecast>>.success(
          data: [cityForecast],
        ),
      ],
    );

    blocTest<CurrentConditionsCubit,
        AsyncState<ApiExceptions, List<CityForecast>>>(
      'Initialize with no saved data emitting correctly',
      build: () {
        when(() => mockCitiesStorageRepository.getCities()).thenReturn([]);
        return cubit;
      },
      act: (cubit) => cubit.initialize(),
      expect: () => [
        const AsyncState<ApiExceptions, List<CityForecast>>.success(
          data: <CityForecast>[],
        ),
      ],
    );

    blocTest<CurrentConditionsCubit,
        AsyncState<ApiExceptions, List<CityForecast>>>(
      'Add a city with a successful response adding it to the existing list',
      build: () {
        when(() => mockCitiesStorageRepository.getCities()).thenReturn([city]);
        when(
          () => mockCurrentConditionsRepository.getCurrentConditions(
            city: city,
          ),
        ).thenAnswer((_) async => const Right(cityForecast));
        return cubit;
      },
      seed: () => const AsyncState.success(data: [cityForecast]),
      act: (cubit) => cubit.fetchCurrentConditions(city),
      expect: () => <AsyncState<ApiExceptions, List<CityForecast>>>[],
    );

    blocTest<CurrentConditionsCubit,
        AsyncState<ApiExceptions, List<CityForecast>>>(
      'Add a city with a successful response adding it to the existing list',
      build: () {
        when(
          () => mockCurrentConditionsRepository.getCurrentConditions(
            city: city,
          ),
        ).thenAnswer((_) async => const Right(cityForecast));
        return cubit;
      },
      seed: () => const AsyncState.success(data: []),
      act: (cubit) => cubit.fetchCurrentConditions(city),
      expect: () => [
        const AsyncState<ApiExceptions, List<CityForecast>>.success(
          data: [cityForecast],
        ),
      ],
    );

    blocTest<CurrentConditionsCubit,
        AsyncState<ApiExceptions, List<CityForecast>>>(
      'Add a city with a failed response emitting an error state',
      build: () {
        when(
          () => mockCurrentConditionsRepository.getCurrentConditions(
            city: city,
          ),
        ).thenAnswer((_) async => const Left(ApiExceptions.unauthorized()));
        return cubit;
      },
      seed: () => const AsyncState.success(data: []),
      act: (cubit) => cubit.fetchCurrentConditions(city),
      expect: () => [
        const AsyncState<ApiExceptions, List<CityForecast>>.error(
          error: ApiExceptions.unauthorized(),
        ),
      ],
    );
  });
}
