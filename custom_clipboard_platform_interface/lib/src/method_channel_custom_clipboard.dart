import 'package:custom_clipboard_platform_interface/custom_clipboard_platform_interface.dart';
import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:flutter/services.dart';

/// An implementation of [CustomClipboardPlatform] that uses method channels.
class MethodChannelCustomClipboard extends CustomClipboardPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('custom_clipboard');

  @override
  Future<void> clearClipboard() {
    return methodChannel.invokeMethod<void>('clearClipboard');
  }
}
