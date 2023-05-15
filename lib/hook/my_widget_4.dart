import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/hook/my_controller.dart';

///
/// カスタムHook
///
class MyWidget4 extends HookWidget {
  const MyWidget4({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = useMyController();

    // コントローラーを使って何かするボタン
    final button = ElevatedButton(
      onPressed: () {
        myController.update();
      },
      child: const Text('更新'),
    );

    // 縦に並べる
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        button,
      ],
    );
  }
}
