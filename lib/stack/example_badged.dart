import 'package:flutter/material.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 300,
            height: 400,
            child: Badged(),
          ),
        ),
      ),
    );
  }
}

class Badged extends StatelessWidget {
  const Badged({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            color: Colors.blue,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
