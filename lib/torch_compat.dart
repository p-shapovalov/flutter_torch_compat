import 'dart:async';

import 'package:flutter/services.dart';

class TorchCompat {
  static const MethodChannel _channel =
      const MethodChannel('g123k/torch_compat');

  static Future turnOn() => _channel.invokeMethod('turnOn');

  static Future turnOff() => _channel.invokeMethod('turnOff');

  static Future dispose() => _channel.invokeMethod('dispose');

  static Future<bool> get hasTorch async =>
      await _channel.invokeMethod('hasTorch') ?? false;
}
