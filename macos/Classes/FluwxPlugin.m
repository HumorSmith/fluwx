#import "FluwxPlugin.h"

@implementation FluwxPlugin


+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel =
      [FlutterMethodChannel methodChannelWithName:@"com.jarvanmo/fluwx"
                                  binaryMessenger:[registrar messenger]];
  FluwxPlugin* instance = [[FluwxPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

//
//+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
//    FlutterMethodChannel *channel = [FlutterMethodChannel
//            methodChannelWithName:@"com.jarvanmo/fluwx"
//                  binaryMessenger:[registrar messenger]];
//
//
//
//
//
////    [[FluwxPlugin alloc] init] register
////    FluwxPlugin *instance = [[FluwxPlugin alloc] initWithRegistrar:registrar methodChannel:channel];
//
//}

- (void)openUrl:(NSString* )url{
    [[NSWorkspace sharedWorkspace]openURL:[NSURL URLWithString:url]];
}


- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
    if ([@"openUrl" isEqualToString:call.method]) {
        [self openUrl:call.arguments[@"url"]];
    }
}

@end
