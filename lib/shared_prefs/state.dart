import 'package:flutter_lab/shared_prefs/kv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

@riverpod
class DrinkNotifier extends _$DrinkNotifier {
  @override
  Future<String> build() async {
    const sec5 = Duration(seconds: 5); // 公開前には消す
    await Future.delayed(sec5);
    // KVから取り出す
    return loadDrink();
  }

  // 状態を変更する
  Future<void> updateDrink(String drink) async {
    // KVに保存
    await saveDrink(drink);
    // アプリ内の状態を変更
    state = AsyncData(drink);
  }
}

//
// ヒント: AsyncValue.data は AsyncData にリニューアルされました
//