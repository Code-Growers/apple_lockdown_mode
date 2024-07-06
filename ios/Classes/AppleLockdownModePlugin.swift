import Flutter
import UIKit

public class AppleLockdownModePlugin: NSObject, FlutterPlugin {
    static let channelName = "tech.codegrowers.applelockdownmode/apple_lockdown_mode_plugin"
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let protectedModeChannel = FlutterMethodChannel(name: channelName, binaryMessenger: registrar.messenger())
        
        let isLockdownModeEnabled = (UserDefaults.standard.object(forKey: "LDMGlobalEnabled") as? Bool) ?? false

         protectedModeChannel.setMethodCallHandler({ [self]
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if (call.method == "IsLockdownModeEnabled") {
                result(Bool(isLockdownModeEnabled))
            }
        })
    }
}
