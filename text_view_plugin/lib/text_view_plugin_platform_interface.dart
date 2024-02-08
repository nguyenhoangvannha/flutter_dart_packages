import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'text_view_plugin_method_channel.dart';

abstract class TextViewPluginPlatform extends PlatformInterface {
  /// Constructs a TextViewPluginPlatform.
  TextViewPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static TextViewPluginPlatform _instance = MethodChannelTextViewPlugin();

  /// The default instance of [TextViewPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelTextViewPlugin].
  static TextViewPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TextViewPluginPlatform] when
  /// they register themselves.
  static set instance(TextViewPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
