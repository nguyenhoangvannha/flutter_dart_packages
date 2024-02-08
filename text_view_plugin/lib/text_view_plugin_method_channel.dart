import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'text_view_plugin_platform_interface.dart';

/// An implementation of [TextViewPluginPlatform] that uses method channels.
class MethodChannelTextViewPlugin extends TextViewPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('text_view_plugin');

  @override
  Future<String?> setText(String text) async {
    final version =
        await methodChannel.invokeMethod<String>('setText', {"text": text});
    return version;
  }
}
