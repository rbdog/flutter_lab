import 'package:flutter/material.dart';
import 'package:flutter_lab/shared_prefs/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ドリンクを表示するだけ
class DrinkText extends ConsumerWidget {
  const DrinkText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drink = ref.watch(drinkNotifierProvider);
    return switch (drink) {
      AsyncData(:final value) => Text(value),
      AsyncValue() => const CircularProgressIndicator(),
    };
  }
}

/// ドリンクを編集できるテキストフィールド
class DrinkTextField extends ConsumerWidget {
  const DrinkTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drink = ref.watch(drinkNotifierProvider);
    return switch (drink) {
      AsyncData(:final value) => TextField(
          controller: controller..text = value,
        ),
      AsyncValue() => const CircularProgressIndicator(),
    };
  }
}

/// ドリンクを保存するボタン
class DrinkSaveButton extends ConsumerWidget {
  const DrinkSaveButton({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final drink = controller.text;
        final notifier = ref.read(drinkNotifierProvider.notifier);
        notifier.updateDrink(drink);
      },
      child: const Text('保存'),
    );
  }
}
