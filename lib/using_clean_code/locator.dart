import 'package:get_it/get_it.dart';

import 'data_layer/data_sources/remote_data_source.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => RemoteDataSource());
}
