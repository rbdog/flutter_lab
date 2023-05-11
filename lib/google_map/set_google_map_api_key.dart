import 'dart:async';

import 'package:flutter/services.dart';

const platformChannel = MethodChannel('mobile_app');

// Call native function to set GoogleMap API Key
// return true if succeeded
Future<bool> setGoogleMapApiKey(String apiKey) async {
  Map<String, dynamic> args = {"apiKey": apiKey};
  final result = await platformChannel.invokeMethod('setGoogleMapApiKey', args);
  return (result as bool);
}
