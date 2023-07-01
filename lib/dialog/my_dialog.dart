import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('タイトル'),
      content: const Text('コンテント'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'キャンセルを押しました');
          },
          child: const Text('キャンセル'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'OKを押しました');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
