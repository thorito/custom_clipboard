import 'package:custom_clipboard_platform_interface/custom_clipboard_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// The iOS implementation of [CustomClipboardPlatform].
class CustomClipboardIOS extends CustomClipboardPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('custom_clipboard_ios');

  /// Registers this class as the default instance of [CustomClipboardPlatform]
  static void registerWith() {
    CustomClipboardPlatform.instance = CustomClipboardIOS();
  }

  /// Invoke the platform-specific method to clear the clipboard.
  @override
  Future<void> clearClipboard() {
    return methodChannel.invokeMethod<String>('clearClipboard');
  }
}
