import 'package:flutter/material.dart';
import 'package:kemo/setup/app_setup.dart';
import 'package:kemo/setup/init_app.dart';

Future<void> main() async {
  await setup();
  runApp(const AppSetup());
}
