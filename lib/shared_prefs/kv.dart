import 'package:shared_preferences/shared_preferences.dart';

class KV {
  Future<void> saveDrink(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'drink',
      value,
    );
  }

  Future<String> loadDrink() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString('drink');
    return value ?? 'お水';
  }
}
