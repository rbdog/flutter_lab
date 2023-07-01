import 'package:flutter/material.dart';
import 'package:flutter_lab/dialog/my_dialog.dart';

//
// ダイアログは閉じるまで で一回の処理
// 時間がかかるので Future を使う
//
Future<void> showMyDialog(BuildContext context) async {
  //
  // Myダイアログを表示して 回答を待つ
  //
  final answer = await showDialog(
    context: context,
    builder: (_) => const MyDialog(),
  );

  // 回答を確認
  debugPrint(answer);
}
