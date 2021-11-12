
import 'dart:async';

import 'package:flutter/services.dart';

class Testdialogplugin {
  static const MethodChannel _channel = MethodChannel('testdialogplugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
