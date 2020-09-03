import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }

    override func application(_ application: NSApplication, open urls: [URL]) {
            print("url \(urls)")
    }
     
//        override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
//    //        if ([sourceApplication isEqualToString:@"com.apple.MobileSMS"]) {
//    //               //微信网页登录
//    //               BOOL succeed = [WXApi handleOpenURL:url delegate:self];
//    //               return succeed;
//    //        }
//
//            print("url \(url)")
////            DispatchQueue.main.async {
////                var parameters = Dictionary<String, String>();
////                parameters["url"] = url.path;
////                print("path = \(url.path)")
////
////                let controller : FlutterViewController = self.window?.rootViewController as! FlutterViewController;
////                var wxChannel = FlutterMethodChannel.init(name: "com.jarvanmo/fluwx",binaryMessenger:controller.binaryMessenger );
////                wxChannel.invokeMethod("openUrl", arguments: parameters);
////              // your code here
////            }
////
////
////    //       dispatch_async(dispatch_get_main_queue(), ^{
////    //               [WXApi handleOpenURL:url delegate:self];
////    //           });
////            return false;
//        }
}
