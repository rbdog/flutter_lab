import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'state.g.dart';

@Riverpod()
class NameNotifier extends _$NameNotifier {
  @override
  Future<String> build() async {
    const sec5 = Duration(seconds: 5);
    await Future.delayed(sec5);
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('name') ?? '未設定';
  }

  void updateName(String name) {
    state = AsyncValue.data(name);
  }
}
