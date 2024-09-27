import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_flutter/src/features/search/data/repositories/search_repository.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';

///Extension cubit to expose selected cities. Could be managed without a cubit also
///but its cleaner this way.
@injectable
class SearchCubit extends Cubit<City?> {
  SearchCubit(this._searchRepository) : super(null);

  final SearchRepository _searchRepository;

  Future<void> selectCity(City city) async {
    emit(city);
  }

  //Just an exposure of repo method
  Future<List<City>> searchCitiesByQuery(String query) =>
      _searchRepository.searchCitiesByQuery(query: query);
}
