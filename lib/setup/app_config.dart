import 'package:package_info_plus/package_info_plus.dart';

import '../helpers/device_type.dart';

class AppConfig {
  AppConfig({required PackageInfo packageInfo, required this.devicePlatform})
      : appId = packageInfo.packageName,
        appName = packageInfo.appName,
        appVersion = packageInfo.version,
        buildNumber = packageInfo.buildNumber;

  final String appId;
  final String appName;
  final String appVersion;
  final String buildNumber;
  final DevicePlatform devicePlatform;
}
