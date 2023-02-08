
import 'ble_with_notify_platform_interface.dart';

class BleWithNotify {
  Future<String?> getPlatformVersion() {
    return BleWithNotifyPlatform.instance.getPlatformVersion();
  }
}
