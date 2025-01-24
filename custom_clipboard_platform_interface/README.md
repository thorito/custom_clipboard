# custom_clipboard_platform_interface

A common platform interface for the `custom_clipboard` plugin.

This interface allows platform-specific implementations of the `custom_clipboard` plugin, as well as the plugin itself, to ensure they are supporting the same interface.

# Usage

To implement a new platform-specific implementation of `custom_clipboard`, extend `CustomClipboardPlatform` with an implementation that performs the platform-specific behavior.
