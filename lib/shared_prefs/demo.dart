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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '料理',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    MyField(text: ''),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '飲み物',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    MyField(text: ''),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'デザート',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    MyField(text: ''),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyField extends ConsumerWidget {
  const MyField({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BorderedField(
      color: Colors.white,
      borderColor: Colors.grey,
      focusBorderColor: Colors.blue,
      borderWidth: 2,
      focusBorderWidth: 4,
      radius: 5,
      value: text,
      style: const TextStyle(fontSize: 20),
      onChanged: (value) {
        // final notifier = ref.read(textProvider.notifier);
        // notifier.state = value;
      },
    );
  }
}
