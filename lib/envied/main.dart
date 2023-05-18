import 'package:flutter/material.dart';
import 'package:flutter_lab/envied/env.dart';

void main() {
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
          child: Text(
            EnvDev.pass1,
          ),
        ),
      ),
    );
  }
}
