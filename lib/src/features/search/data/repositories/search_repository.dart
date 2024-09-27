import 'package:injectable/injectable.dart';
import 'package:interview_flutter/src/core/api/url.dart';
import 'package:interview_flutter/src/core/services/network_service/network_service.dart';
import 'package:interview_flutter/src/core/services/storage_service/storage_service.dart';
import 'package:interview_flutter/src/features/search/data/dto/city_dto.dart';
import 'package:interview_flutter/src/features/search/data/dto/search_request_dto.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';

@injectable
class SearchRepository {
  SearchRepository(this._networkService, this._languageCodeRepository);

  final NetworkService _networkService;
  final LanguageCodeRepository _languageCodeRepository;

  ///Method to search cities by query
  ///
  /// Case of error, returns an empty list
  Future<List<City>> searchCitiesByQuery({
    required String query,
    String? languageCode,
  }) async {
    if (query.isEmpty) return <City>[];

    final lang = languageCode ?? _languageCodeRepository.getLanguageCode();
    final result = await _networkService.fetch(
      autoCompleteUrl,
      successDataParser: (object) {
        if (object is List) {
          return object.fold(<City>[], (previousValue, element) {
            try {
              final cityDto = CityDto.fromJson(element as Map<String, dynamic>);
              final city = cityDto.toDomain();
              return [...previousValue, city];
            } catch (e) {
              return previousValue;
            }
          });
        }
        return <City>[];
      },
      query: SearchRequestDto(
        query: query.toLowerCase(),
      ).toJson(
        language: lang,
      ),
    );

    return result.getOrElse((_) => <City>[]);
  }
}
