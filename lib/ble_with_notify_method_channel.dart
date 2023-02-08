import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ble_with_notify_platform_interface.dart';

/// An implementation of [BleWithNotifyPlatform] that uses method channels.
class MethodChannelBleWithNotify extends BleWithNotifyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ble_with_notify');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
