import 'package:flutter/material.dart';

class Reel {
  // はやく回転するときのスピード
  final durationFast = 0.1;
  // ゆっくり回転するときのスピード
  final durationSlow = 0.5;

  // offset
  final scrollController = ScrollController();
  // index
  var index = 0;
  // stopAt
  final List<int> stopAt = [];
  // pockets
  final List<Pocket> pockets;
  // size
  final double pocketSize;
  Reel(this.pockets, this.pocketSize);

  void start() {
    stopAt.clear();
    loop();
  }

  void loop() async {
    await spinOne();
    if (canStop()) {
      didStop();
    } else {
      loop(); // 再帰呼び出し
    }
  }

  double duration(int toIndex) {
    return stopAt.contains(toIndex) ? durationSlow : durationFast;
  }

  Future<void> spinOne() async {
    // 現在の index を取得
    final oldIndex = index;
    var newIndex = oldIndex + 1;
    // index の限界を超えていた場合は内部保持のデータのみ 0 にする
    final maxIndex = pockets.length - 1;
    if (newIndex > maxIndex) {
      newIndex = 0;
    }
    final oldOffset = oldIndex.toDouble() * pocketSize;
    final newOffset = (oldIndex + 1).toDouble() * pocketSize;
    // 時間をかけて値を変化させる
    final d = (duration(newIndex) * 1000).toInt();
    index = newIndex;
    scrollController.jumpTo(oldOffset);
    await scrollController.animateTo(
      newOffset,
      duration: Duration(milliseconds: d),
      curve: Curves.linear,
    );
  }

  bool canStop() {
    return stopAt.contains(index);
  }

  void stop(List<int> at) {
    stopAt.addAll(at);
  }

  void didStop() {
    debugPrint('回転が止まりました。 at: $index');
  }
}

class Pocket {
  final String symbolUri;
  final Color color;
  Pocket(this.symbolUri, this.color);
}

class ReelView extends StatelessWidget {
  final Reel reel;
  final double pocketSize;
  const ReelView(this.reel, this.pocketSize, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        controller: reel.scrollController,
        physics: const NeverScrollableScrollPhysics(), // タッチによるスクロールを無効化
        child: Column(
          children: [
            for (final pocket in reel.pockets)
              Container(
                width: pocketSize,
                height: pocketSize,
                color: pocket.color,
              ),
          ],
        ),
      ),
    );
  }
}

class MachineView extends StatelessWidget {
  final Machine machine;
  const MachineView(this.machine, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final reel in machine.reels) ReelView(reel, machine.pocketSize),
      ],
    );
  }
}

class Machine {
  final List<Reel> reels;
  final double pocketSize;
  Machine(this.reels, this.pocketSize);

  test() {
    reels.first.scrollController.jumpTo(500); // 時間をかけずに移動
    reels.first.scrollController.animateTo(
      100,
      duration: const Duration(seconds: 3),
      curve: Curves.linear,
    );
  }

  start() {
    reels.first.start();
  }
}

final machine = Machine([
  Reel([
    Pocket('aa', Colors.blue),
    Pocket('aa', Colors.green),
    Pocket('aa', Colors.yellow),
    Pocket('aa', Colors.orange),
    Pocket('aa', Colors.purple),
    Pocket('aa', Colors.pink),
  ], 200),
], 200);

main() {
  final sca = Scaffold(
    body: MachineView(machine),
    floatingActionButton: ElevatedButton(
      onPressed: () {
        machine.start();
      },
      child: const Text('push'),
    ),
  );
  final app = MaterialApp(home: sca);
  runApp(app);
}
