import Flutter
import UIKit

@objc public class CustomClipboardPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "custom_clipboard", binaryMessenger: registrar.messenger())
    let instance = CustomClipboardPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "clearClipboard" {
      UIPasteboard.general.string = ""
      result(nil)
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
