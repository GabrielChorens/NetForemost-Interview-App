import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';

enum StorageKey {
  cities,
  languageCode,
}

@injectable
class CitiesStorageRepository {
  CitiesStorageRepository(this._storageService);

  final GetStorage _storageService;

  List<City> getCities() {
    final json = _storageService.read<List<dynamic>>(StorageKey.cities.name);
    if (json == null || json.isEmpty) return [];
    return json.fold(<City>[], (cities, cityJson) {
      try {
        final city = City.fromJson(cityJson as Map<String, dynamic>);
        return [...cities, city];
      } catch (e) {
        return cities;
      }
    });
  }

  void saveCities(List<City> cities) {
    final json = cities.map((city) => city.toJson()).toList();
    _storageService.write(StorageKey.cities.name, json);
  }
}

@injectable
class LanguageCodeRepository {
  LanguageCodeRepository(this._storageService);

  final GetStorage _storageService;

  String? getLanguageCode() {
    return _storageService.read<String>(StorageKey.languageCode.name);
  }

  void saveLanguageCode(String languageCode) {
    _storageService.write(StorageKey.languageCode.name, languageCode);
  }
}
