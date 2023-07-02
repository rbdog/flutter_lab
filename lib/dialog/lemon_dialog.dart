import 'package:flutter/material.dart';

/// レモン ダイアログ
class LemonDialog extends StatelessWidget {
  const LemonDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('レモン'),
      content: const Text('唐揚げにかけても良いですか？'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'A');
          },
          child: const Text('キャンセル'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'B');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
