import 'package:flutter/material.dart';
import 'package:flutter_lab/shared_prefs/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyTextField extends ConsumerWidget {
  const MyTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncName = ref.watch(nameNotifierProvider);
    return asyncName.when(
      loading: () => const CircularProgressIndicator(),
      error: (_, __) => const CircularProgressIndicator(),
      data: (name) {
        controller.text = name;
        return TextField(controller: controller);
      },
    );
  }
}

class MyButton extends ConsumerWidget {
  const MyButton({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final name = controller.text;

        // メモリに保存
        final notifier = ref.read(nameNotifierProvider.notifier);
        notifier.updateName(name);

        // ストレージに保存
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('name', name);
        debugPrint('保存しました');
      },
      child: const Text('保存'),
    );
  }
}
