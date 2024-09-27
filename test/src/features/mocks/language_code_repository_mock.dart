import 'package:interview_flutter/src/core/services/storage_service/storage_service.dart';

class LanguageCodeRepositoryMock implements LanguageCodeRepository {
  @override
  String getLanguageCode() {
    return 'en-us';
  }

  @override
  void saveLanguageCode(String languageCode) {}
}
