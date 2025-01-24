import 'dart:io';

import 'package:custom_clipboard_platform_interface/custom_clipboard_platform_interface.dart';
import 'package:flutter/services.dart';

CustomClipboardPlatform get _method => CustomClipboardPlatform.instance;

/// Invoke the platform-specific method to get the clipboard data.
Future<String?> getClipboard() async {
  final data = await Clipboard.getData(Clipboard.kTextPlain);
  return data?.text;
}

/// Invoke the platform-specific method to clear the clipboard.
Future<void> clearClipboard() async {
  if (Platform.isAndroid) {
    await _method.clearClipboard();
  }

  final data = await getClipboard();
  if (data != null && data.isNotEmpty) {
    await Clipboard.setData(const ClipboardData(text: ''));
  }
}
