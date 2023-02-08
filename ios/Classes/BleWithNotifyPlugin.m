#import "BleWithNotifyPlugin.h"
#if __has_include(<ble_with_notify/ble_with_notify-Swift.h>)
#import <ble_with_notify/ble_with_notify-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ble_with_notify-Swift.h"
#endif

@implementation BleWithNotifyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBleWithNotifyPlugin registerWithRegistrar:registrar];
}
@end
