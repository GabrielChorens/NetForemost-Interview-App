import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class SharedThirdPartyServices {
  @lazySingleton
  GetStorage get getStorage => GetStorage();
}
