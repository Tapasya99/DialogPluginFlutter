#import "TestdialogpluginPlugin.h"
#if __has_include(<testdialogplugin/testdialogplugin-Swift.h>)
#import <testdialogplugin/testdialogplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "testdialogplugin-Swift.h"
#endif

@implementation TestdialogpluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTestdialogpluginPlugin registerWithRegistrar:registrar];
}
@end
