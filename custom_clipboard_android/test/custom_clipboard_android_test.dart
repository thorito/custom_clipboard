import 'package:custom_clipboard_android/custom_clipboard_android.dart';
import 'package:custom_clipboard_platform_interface/custom_clipboard_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('CustomClipboardAndroid', () {
    test('can be registered', () {
      CustomClipboardAndroid.registerWith();
      expect(CustomClipboardPlatform.instance, isA<CustomClipboardAndroid>());
    });
  });
}
