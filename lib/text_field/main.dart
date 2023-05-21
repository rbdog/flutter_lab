import 'package:flutter/material.dart';
import 'package:flutter_lab/text_field/bordered_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyField(),
        ),
      ),
    );
  }
}

final textProvider = StateProvider((ref) => 'Hi');

class MyField extends ConsumerWidget {
  const MyField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final word = ref.watch(textProvider);
    return BorderedField(
      value: word,
      onChanged: (value) {
        // final notifier = ref.read(textProvider.notifier);
        // notifier.state = value;
      },
    );
  }
}
