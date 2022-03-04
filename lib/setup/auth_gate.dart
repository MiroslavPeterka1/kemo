import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:kemo/screens/main_land_screen.dart';
import 'package:kemo/screens/main_mob_screen.dart';
import 'package:kemo/setup/init_app.dart';

class AuthGate extends StatelessWidget {
  AuthGate({Key? key}) : super(key: key);

  final _auth = getIt.get<FirebaseAuth>();
  final List<ProviderConfiguration> providerConfigurations = [
    const EmailProviderConfiguration(),
    const GoogleProviderConfiguration(
      clientId: '8425252069-hg31virrf6p93gri9m9p2fbv84gr3psm.apps.googleusercontent.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: _auth.currentUser,
      stream: _auth.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            ),
            child: SignInScreen(providerConfigs: providerConfigurations),
          );
        }
        if (MediaQuery.of(context).size.width < 800) {
          return const MainMobScreen();
        }
        return const MainLandScreen();
      },
    );
  }
}
