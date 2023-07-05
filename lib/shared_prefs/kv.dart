import 'package:shared_preferences/shared_preferences.dart';

/// ドリンクを保存する
Future<void> saveDrink(String value) async {
  // パッケージを使う
  final prefs = await SharedPreferences.getInstance();
  // キーとバリューを保存
  await prefs.setString(
    'drink', // キー
    value, // バリュー
  );
}

/// ドリンクを取り出す
Future<String> loadDrink() async {
  // パッケージを使う
  final prefs = await SharedPreferences.getInstance();
  // キーを使って探す
  final value = prefs.getString('drink'); // キー
  // 見つからなかったら お水 にする
  return value ?? 'お水';
}
