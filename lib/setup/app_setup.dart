import 'package:flutter/material.dart';
import 'package:kemo/l10n/l10n_config.dart';
import 'package:kemo/setup/auth_gate.dart';
import 'package:kemo/setup/consts.dart';
import 'package:kemo/setup/themes.dart';

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
