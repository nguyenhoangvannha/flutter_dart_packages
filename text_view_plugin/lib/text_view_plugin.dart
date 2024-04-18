
import 'text_view_plugin_platform_interface.dart';

export 'text_view_hybrid_composition.dart';
export 'text_view_virtual_display.dart';

class TextViewPlugin {
  Future<String?> setText(String text) {
    return TextViewPluginPlatform.instance.setText(text);
  }
}
