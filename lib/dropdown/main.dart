import 'package:flutter/material.dart';
import 'package:flutter_lab/dropdown/dropdown.dart';
import 'package:flutter_lab/dropdown/popup.dart';
import 'package:flutter_lab/dropdown/state.dart';
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
      home: HomePage2(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(indexNotifierProvider);
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 100,
          child: MyDropdownButton(
            itemCount: Season.values.length,
            itemBuilder: (i) => SeasonText(Season.values[i]),
            onPressItem: (i) {
              final notifier = ref.read(indexNotifierProvider.notifier);
              notifier.updateState(i);
            },
            child: SeasonText(Season.values[selected]),
          ),
        ),
      ),
    );
  }
}

class HomePage2 extends ConsumerWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 100,
          child: MyPopupButton(
            menuColor: Colors.red,
            buttonColor: Colors.blue,
            itemBuilder: (i) => SeasonText(Season.values[i]),
            itemCount: Season.values.length,
            onPressItem: (i) {
              debugPrint('Selected');
            },
            child: const Text('popup'),
          ),
        ),
      ),
    );
  }
}
