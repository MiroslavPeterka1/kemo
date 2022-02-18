import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

// ignore: constant_identifier_names
enum DevicePlatform { Android, iOS, Fusia, Linux, Web, Windows, MackOs, Uknown }

DevicePlatform getDevicePlatform() {
  if (kIsWeb) return DevicePlatform.Web;
  if (Platform.isAndroid) return DevicePlatform.Android;
  if (Platform.isIOS) return DevicePlatform.iOS;
  if (Platform.isWindows) return DevicePlatform.Windows;
  if (Platform.isFuchsia) return DevicePlatform.Fusia;
  if (Platform.isLinux) return DevicePlatform.Linux;
  if (Platform.isMacOS) return DevicePlatform.MackOs;
  return DevicePlatform.Uknown;
}
