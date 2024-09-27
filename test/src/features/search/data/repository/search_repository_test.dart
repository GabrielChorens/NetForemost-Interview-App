import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:interview_flutter/src/core/services/network_service/network_service.dart';
import 'package:interview_flutter/src/features/search/data/repositories/search_repository.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/dio_mock.dart';
import '../../../mocks/language_code_repository_mock.dart';
import '../mocks/mock_responses.dart';

void main() {
  late SearchRepository repository;
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
    repository = SearchRepository(networkService, LanguageCodeRepositoryMock());
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
          data: rightAutocompleteResponse,
          statusCode: 200,
          requestOptions: RequestOptions(),
        ),
      );

      // Act
      final result = await repository.searchCitiesByQuery(query: 'Mana');

      // Assert
      expect(result.length, rightAutocompleteResponse.length);
      expect(result.first, const City(cityName: 'Managua', cityId: 253810));
    });

    //Error cases are the same for all repositories
  });
}
