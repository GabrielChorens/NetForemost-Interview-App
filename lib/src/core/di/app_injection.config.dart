// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:get_storage/get_storage.dart' as _i792;
import 'package:injectable/injectable.dart' as _i526;
import 'package:interview_flutter/src/core/di/third_party_modules.dart'
    as _i1011;
import 'package:interview_flutter/src/core/locale/language_cubit.dart' as _i702;
import 'package:interview_flutter/src/core/services/network_service/network_service.dart'
    as _i1051;
import 'package:interview_flutter/src/core/services/storage_service/storage_service.dart'
    as _i486;
import 'package:interview_flutter/src/features/current_conditions/application/current_conditions_cubit.dart'
    as _i1043;
import 'package:interview_flutter/src/features/current_conditions/data/repository/current_conditions_repository.dart'
    as _i727;
import 'package:interview_flutter/src/features/search/application/search_cubit.dart'
    as _i16;
import 'package:interview_flutter/src/features/search/data/repositories/search_repository.dart'
    as _i840;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedThirdPartyServices = _$SharedThirdPartyServices();
    gh.singleton<_i1051.NetworkService>(() => _i1051.NetworkService());
    gh.lazySingleton<_i792.GetStorage>(
        () => sharedThirdPartyServices.getStorage);
    gh.factory<_i486.CitiesStorageRepository>(
        () => _i486.CitiesStorageRepository(gh<_i792.GetStorage>()));
    gh.factory<_i486.LanguageCodeRepository>(
        () => _i486.LanguageCodeRepository(gh<_i792.GetStorage>()));
    gh.singleton<_i702.LanguageCubit>(
        () => _i702.LanguageCubit(gh<_i486.LanguageCodeRepository>()));
    gh.factory<_i727.CurrentConditionsRepository>(
        () => _i727.CurrentConditionsRepository(
              gh<_i1051.NetworkService>(),
              gh<_i486.LanguageCodeRepository>(),
            ));
    gh.factory<_i840.SearchRepository>(() => _i840.SearchRepository(
          gh<_i1051.NetworkService>(),
          gh<_i486.LanguageCodeRepository>(),
        ));
    gh.factory<_i16.SearchCubit>(
        () => _i16.SearchCubit(gh<_i840.SearchRepository>()));
    gh.factory<_i1043.CurrentConditionsCubit>(
        () => _i1043.CurrentConditionsCubit(
              gh<_i486.CitiesStorageRepository>(),
              gh<_i727.CurrentConditionsRepository>(),
            ));
    return this;
  }
}

class _$SharedThirdPartyServices extends _i1011.SharedThirdPartyServices {}
