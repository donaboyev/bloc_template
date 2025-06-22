import 'package:get_it/get_it.dart';

import '../domain/interface/numbers_interface.dart';
import 'local/hive_service.dart';
import 'remote/http_service.dart';
import 'repository/numbers_repository.dart';

Future<void> setupDependencies() async {
  // Register services
  GetIt.I.registerSingleton<HttpService>(HttpService());
  GetIt.I.registerSingleton<HiveService>(HiveService());

  // Register repositories
  GetIt.I.registerLazySingleton<NumbersInterface>(() => NumbersRepository());
}

final dioHttp = GetIt.I.get<HttpService>();
final hiveService = GetIt.I.get<HiveService>();
final numbersRepository = GetIt.I.get<NumbersInterface>();
