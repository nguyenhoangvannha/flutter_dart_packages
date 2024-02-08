#include "include/text_view_plugin/text_view_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "text_view_plugin.h"

void TextViewPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  text_view_plugin::TextViewPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
