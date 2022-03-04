import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:kemo/firebase_options.dart';
import 'package:kemo/helpers/device_type.dart';
import 'package:kemo/setup/app_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

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

  getIt
    ..registerLazySingleton<AppConfig>(() => config)
    ..registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
}
