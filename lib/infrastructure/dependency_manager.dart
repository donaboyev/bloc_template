import 'package:get_it/get_it.dart';

import '../domain/interface/numbers_interface.dart';
import 'remote/http_service.dart';
import 'repository/numbers_repository.dart';

Future<void> setupDependencies() async {
  GetIt.I.registerSingleton<HttpService>(HttpService());
  GetIt.I.registerLazySingleton<NumbersInterface>(() => NumbersRepository());
}

final dioHttp = GetIt.I.get<HttpService>();
final numbersRepository = GetIt.I.get<NumbersInterface>();
