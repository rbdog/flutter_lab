import 'package:flutter/material.dart';
import 'package:flutter_lab/shared_prefs/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyLabel extends ConsumerWidget {
  const MyLabel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDrink = ref.watch(drinkNotifierProvider);
    return asyncDrink.when(
      loading: () => const CircularProgressIndicator(),
      error: (_, __) => const CircularProgressIndicator(),
      data: (drink) => Text(drink),
    );
  }
}

class MyTextField extends ConsumerWidget {
  const MyTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDrink = ref.watch(drinkNotifierProvider);
    return asyncDrink.when(
      loading: () => const CircularProgressIndicator(),
      error: (_, __) => const CircularProgressIndicator(),
      data: (drink) {
        controller.text = drink;
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
        final drink = controller.text;
        final notifier = ref.read(drinkNotifierProvider.notifier);
        notifier.saveDrink(drink);
      },
      child: const Text('保存'),
    );
  }
}
