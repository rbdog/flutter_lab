import 'package:flutter_lab/shared_prefs/kv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

@Riverpod()
class DrinkNotifier extends _$DrinkNotifier {
  @override
  Future<String> build() async {
    const sec5 = Duration(seconds: 5); // 公開前には消す
    await Future.delayed(sec5);
    // KVストレージから読み取る
    final kv = KV();
    return kv.loadDrink();
  }

  Future<void> saveDrink(String drink) async {
    // KVストレージに保存
    final kv = KV();
    await kv.saveDrink(state.value!);
    // アプリ内の状態を変更
    state = AsyncValue.data(drink);
  }
}
