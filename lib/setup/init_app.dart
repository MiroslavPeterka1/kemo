import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../firebase_options.dart';
import '../helpers/device_type.dart';
import 'app_config.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final packageInfo = await PackageInfo.fromPlatform();
  final devicePlatform = getDevicePlatform();
  final config = AppConfig(
    packageInfo: packageInfo,
    devicePlatform: devicePlatform,
  );

  getIt.registerLazySingleton<AppConfig>(() => config);
}
