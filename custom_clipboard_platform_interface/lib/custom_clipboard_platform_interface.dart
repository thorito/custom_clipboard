import 'package:custom_clipboard_platform_interface/src/method_channel_custom_clipboard.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// The interface that implementations of custom_clipboard must implement.
///
/// Platform implementations should extend this class
/// rather than implement it as `CustomClipboard`.
/// Extending this class (using `extends`) ensures that the subclass will get
/// the default implementation, while platform implementations
/// that `implements` this interface will be broken by newly added
/// [CustomClipboardPlatform] methods.
abstract class CustomClipboardPlatform extends PlatformInterface {
  /// Constructs a CustomClipboardPlatform.
  CustomClipboardPlatform() : super(token: _token);

  static final Object _token = Object();

  static CustomClipboardPlatform _instance = MethodChannelCustomClipboard();

  /// The default instance of [CustomClipboardPlatform] to use.
  ///
  /// Defaults to [MethodChannelCustomClipboard].
  static CustomClipboardPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [CustomClipboardPlatform] when they
  /// register themselves.
  static set instance(CustomClipboardPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  /// clear the clipboard.
  Future<void> clearClipboard();
}
