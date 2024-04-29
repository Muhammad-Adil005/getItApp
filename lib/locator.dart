import 'package:get_it/get_it.dart';

import 'Api_services/api_services.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ApiService());
}
