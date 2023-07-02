import 'package:flutter/material.dart';
import 'package:flutter_lab/dialog/lemon_dialog.dart';
import 'package:flutter_lab/dialog/pineapple_dialog.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ボタン
        child: ElevatedButton(
          onPressed: () async {
            //
            // レモンダイアログを表示して 回答を待つ
            //
            final answer = await showDialog(
              context: context,
              builder: (_) => const LemonDialog(),
            );

            // 回答を確認
            debugPrint(answer);

            // await の後で context がまだ使えるかどうかチェック
            if (context.mounted) {
              //
              // パイナップルダイアログを表示
              //
              showDialog(
                context: context,
                builder: (_) => const PineappleDialog(),
              );
            }
          },
          child: const Text('開く'),
        ),
      ),
    );
  }
}
