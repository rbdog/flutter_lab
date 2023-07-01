import 'package:flutter/material.dart';
import 'package:flutter_lab/dialog/show_my_dialog.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await showMyDialog(context);

            // await の後で context を使うときは mounted をチェック
            if (context.mounted) {
              showMyDialog(context);
            }
          },
          child: const Text('showDialog'),
        ),
      ),
    );
  }
}
