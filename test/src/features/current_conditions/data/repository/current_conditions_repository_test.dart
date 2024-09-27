import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:interview_flutter/src/core/exceptions/api_exceptions.dart';
import 'package:interview_flutter/src/core/services/network_service/network_service.dart';
import 'package:interview_flutter/src/features/current_conditions/data/repository/current_conditions_repository.dart';
import 'package:interview_flutter/src/features/current_conditions/domain/city_forecast.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/dio_mock.dart';
import '../../../mocks/general_api_responses.dart';
import '../../../mocks/language_code_repository_mock.dart';
import '../mocks/mock_responses.dart';

void main() {
  late CurrentConditionsRepository repository;
  late Dio mockDio;
  late NetworkService networkService;
  setUpAll(() {
    registerFallbackValue(
      RequestOptions(),
    );
  });
  setUp(() {
    mockDio = MockDio()..options = BaseOptions();
    networkService =
        NetworkService.customized(dio: mockDio, options: BaseOptions());
    repository = CurrentConditionsRepository(
      networkService,
      LanguageCodeRepositoryMock(),
    );
  });

  group('getCurrentConditions', () {
    test(
        'should return CityForecast when the call to network service is successful',
        () async {
      when(
        () => mockDio.fetch<Object?>(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: mockRightResponse,
          statusCode: 200,
          requestOptions: RequestOptions(),
        ),
      );

      // Act
      final result = await repository.getCurrentConditions(
        city: const City(
          cityId: 253810,
          cityName: 'Managua',
          description: 'City',
        ),
        languageCode: 'en-us',
      );

      // Assert
      expect(result.isRight(), true);
      expect(
        result.getOrElse(
          (_) => const CityForecast(
            cityName: '',
            cityId: 0,
            description: '',
            temperature: '',
            weatherIcon: '',
            date: '',
          ),
        ),
        const CityForecast(
          cityName: 'Managua',
          cityId: 253810,
          description: 'City',
          temperature: '84.00 C°',
          weatherIcon: '6',
          date: '12:35 PM',
          isDayTime: true,
        ),
      );
    });

    //Should return an unauthorized error when the API key is not provided
    test('should return an unauthorized error when the API key is not provided',
        () async {
      when(
        () => mockDio.fetch<Object?>(
          any(),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: mockErrorApiKeyResponse,
          statusCode: 401,
          requestOptions: RequestOptions(),
        ),
      );

      // Act
      final result = await repository.getCurrentConditions(
        city: const City(
          cityId: 253810,
          cityName: 'Managua',
          description: 'City',
        ),
        languageCode: 'en-us',
      );

      // Assert
      expect(result.isLeft(), true);
      expect(
        result.fold(
          (l) => l,
          (r) => const CityForecast(
            cityName: '',
            cityId: 0,
            description: '',
            temperature: '',
            weatherIcon: '',
            date: '',
          ),
        ),
        isA<Unauthorized>(),
      );
    });
  });

  //should return a bad request error when the location key is invalid
  test('should return a bad request error when the location key is invalid',
      () async {
    when(
      () => mockDio.fetch<Object?>(
        any(),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: mockErrorLocationKeyResponse,
        statusCode: 400,
        requestOptions: RequestOptions(),
      ),
    );

    // Act
    final result = await repository.getCurrentConditions(
      city: const City(
        cityId: 253810,
        cityName: 'Managua',
        description: 'City',
      ),
      languageCode: 'en-us',
    );

    // Assert
    expect(result.isLeft(), true);
    expect(
      result.fold(
        (l) => l,
        (r) => const CityForecast(
          cityId: 0,
          cityName: '',
          description: '',
          temperature: '',
          weatherIcon: '',
          date: '',
        ),
      ),
      isA<BadRequest>(),
    );
  });
}
