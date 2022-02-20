import 'package:flutter/material.dart';

import '../l10n/l10n_config.dart';
import 'auth_gate.dart';
import 'consts.dart';
import 'themes.dart';

class AppSetup extends StatelessWidget {
  const AppSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: getMainThemeLight(),
      darkTheme: getMainThemeDark(),
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      home: AuthGate(),
    );
  }
}
