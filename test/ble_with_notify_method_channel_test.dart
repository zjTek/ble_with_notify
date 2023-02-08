import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ble_with_notify/ble_with_notify_method_channel.dart';

void main() {
  MethodChannelBleWithNotify platform = MethodChannelBleWithNotify();
  const MethodChannel channel = MethodChannel('ble_with_notify');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
