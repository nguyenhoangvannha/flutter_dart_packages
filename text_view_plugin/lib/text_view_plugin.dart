
import 'text_view_plugin_platform_interface.dart';

class TextViewPlugin {
  Future<String?> getPlatformVersion() {
    return TextViewPluginPlatform.instance.getPlatformVersion();
  }
}
