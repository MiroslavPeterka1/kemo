import 'package:flutter/material.dart';

import 'setup/app_setup.dart';
import 'setup/init_app.dart';

void main() async {
  await setup();
  runApp(const AppSetup());
}
