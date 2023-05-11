// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';

// --- handle callback ---
// _plugin.userDataEvents?.listen((user) {});

final plugin = GoogleSignInPlatform.instance as GoogleSignInPlugin;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await plugin.initWithParams(
    const SignInInitParameters(
      clientId: 'xxxxx.apps.googleusercontent.com',
    ),
  );

  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: plugin.renderButton(),
        ),
      ),
    );
  }
}
