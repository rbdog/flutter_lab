import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: DragField(),
        ),
      ),
    );
  }
}

class DragField extends HookWidget {
  const DragField({super.key});

  @override
  Widget build(BuildContext context) {
    final offset = useState(Offset.zero);
    // ドロップ可能なエリア
    return Stack(
      children: [
        Positioned(
          left: offset.value.dx,
          top: offset.value.dy,
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              final pos = details.localPosition;
              offset.value = pos;
            },
            onHorizontalDragUpdate: (details) {
              final pos = details.localPosition;
              offset.value = pos;
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
