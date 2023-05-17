import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

///
/// useState
///
class MyWidget1 extends HookWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    // 状態
    final count = useState(0);

    // 状態を確認
    final text = Text('現在のカウント: ${count.value}');

    // 状態を変更
    final button = ElevatedButton(
      onPressed: () {
        count.value = count.value + 1;
      },
      child: const Text('カウント +1'),
    );

    // 縦に並べる
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        text,
        button,
      ],
    );
  }
}
