import 'package:flutter/material.dart';
import 'package:flutter_lab/board_view/board_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyColors {
  static const white = Colors.white;
  static final lightGrey = Colors.grey[500];
}

void main() {
  const home = Home();
  const app = MaterialApp(home: home);
  const scopedApp = ProviderScope(child: app);
  runApp(scopedApp);
}

/// オブジェクトたち
final objectsProvider = StateProvider.autoDispose<List<BoardObject>>((ref) {
  return [
    // 古いケーキ
    BoardObject(
      id: 'Cake-Old',
      x: 100,
      y: 50,
      builder: () {
        return const Icon(
          Icons.cake_rounded,
          size: 50,
        );
      },
    ),
    // 古いベル
    BoardObject(
      id: 'Bell-Old',
      x: 50,
      y: 100,
      builder: () {
        return const Icon(
          Icons.add_alert_rounded,
          size: 50,
        );
      },
    ),
  ];
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final objects = ref.watch(objectsProvider);

    // ボード
    final board = BoardView(
      objects: objects,
      onDrop: (object, others) {
        // オブジェクトから手を離したとき
        // そのまま置く
        ref.read(objectsProvider.notifier).state = [...others, object];
      },
    );

    // バー
    final iconBar = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 追加ボタン
        ElevatedButton(
          onPressed: () {
            // 新しいケーキ
            final cake = BoardObject(
              id: 'Cake-New',
              x: 0,
              y: 0,
              builder: () {
                return const Icon(
                  Icons.cake_rounded,
                  size: 50,
                );
              },
            );

            // 状態に追加する
            final objects = ref.read(objectsProvider);
            ref.read(objectsProvider.notifier).state = [...objects, cake];
          },
          child: const Text('ケーキを追加'),
        ),

        // 追加ボタン
        ElevatedButton(
          onPressed: () {
            // 新しいベル
            final bell = BoardObject(
              id: 'Bell-New',
              x: 0,
              y: 0,
              builder: () {
                return const Icon(
                  Icons.add_alert_rounded,
                  size: 50,
                );
              },
            );

            // 状態に追加する
            final objects = ref.read(objectsProvider);
            ref.read(objectsProvider.notifier).state = [...objects, bell];
          },
          child: const Text('ベルを追加'),
        ),
      ],
    );

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: board,
          ),
          Container(
            height: 50,
            color: Colors.grey,
            child: iconBar,
          ),
        ],
      ),
    );
  }
}
