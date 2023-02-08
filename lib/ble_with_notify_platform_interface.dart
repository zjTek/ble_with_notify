import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ble_with_notify_method_channel.dart';

abstract class BleWithNotifyPlatform extends PlatformInterface {
  /// Constructs a BleWithNotifyPlatform.
  BleWithNotifyPlatform() : super(token: _token);

  static final Object _token = Object();

  static BleWithNotifyPlatform _instance = MethodChannelBleWithNotify();

  /// The default instance of [BleWithNotifyPlatform] to use.
  ///
  /// Defaults to [MethodChannelBleWithNotify].
  static BleWithNotifyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BleWithNotifyPlatform] when
  /// they register themselves.
  static set instance(BleWithNotifyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
