import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/* どうしても必要なコントローラー */
class MyController {
  void init() {
    debugPrint('Myコントローラーを準備します');
  }

  void update() {
    debugPrint('Myコントローラーをアップデートします');
  }

  void dispose() {
    debugPrint('Myコントローラーを捨てます');
  }
}

/* この関数を HookWidget の中から呼ぶ */

MyController useMyController() => use(_Hook());

/* StatefulWidget の代わりにこの下に色々書いておく */

class _Hook extends Hook<MyController> {
  @override
  _State createState() => _State();
}

class _State extends HookState<MyController, _Hook> {
  late MyController controller;

  @override
  void initHook() {
    super.initHook();
    // コントローラーを作る
    controller = MyController();
    // コントローラーを準備
    controller.init();
  }

  @override
  MyController build(BuildContext context) {
    return controller;
  }

  @override
  void dispose() {
    // コントローラーを捨てる
    controller.dispose();
    super.dispose();
  }
}
