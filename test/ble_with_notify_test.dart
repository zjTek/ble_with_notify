import 'package:flutter_test/flutter_test.dart';
import 'package:ble_with_notify/ble_with_notify.dart';
import 'package:ble_with_notify/ble_with_notify_platform_interface.dart';
import 'package:ble_with_notify/ble_with_notify_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBleWithNotifyPlatform
    with MockPlatformInterfaceMixin
    implements BleWithNotifyPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BleWithNotifyPlatform initialPlatform = BleWithNotifyPlatform.instance;

  test('$MethodChannelBleWithNotify is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBleWithNotify>());
  });

  test('getPlatformVersion', () async {
    BleWithNotify bleWithNotifyPlugin = BleWithNotify();
    MockBleWithNotifyPlatform fakePlatform = MockBleWithNotifyPlatform();
    BleWithNotifyPlatform.instance = fakePlatform;

    expect(await bleWithNotifyPlugin.getPlatformVersion(), '42');
  });
}
