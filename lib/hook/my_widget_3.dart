import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

///
/// useTextEditingController
///
class MyWidget3 extends HookWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    // コントローラー
    final controller = useTextEditingController();

    // テキストフィールド
    final textField = TextField(controller: controller);

    // ボタン
    final button = ElevatedButton(
      onPressed: () {
        // 文字を消す
        controller.clear();
      },
      child: const Text('クリア'),
    );

    // 縦に並べる
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        textField,
        button,
      ],
    );
  }
}
