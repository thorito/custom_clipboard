import 'package:custom_clipboard_platform_interface/custom_clipboard_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// The Android implementation of [CustomClipboardPlatform].
class CustomClipboardAndroid extends CustomClipboardPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('custom_clipboard_android');

  /// Registers this class as the default instance of [CustomClipboardPlatform]
  static void registerWith() {
    CustomClipboardPlatform.instance = CustomClipboardAndroid();
  }

  @override
  Future<void> clearClipboard() {
    return methodChannel.invokeMethod<String>('clearClipboard');
  }
}
