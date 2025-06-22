import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'infrastructure/dependency_manager.dart';
import 'presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await setupDependencies();
  runApp(const App());
}
