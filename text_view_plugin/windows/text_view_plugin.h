#ifndef FLUTTER_PLUGIN_TEXT_VIEW_PLUGIN_H_
#define FLUTTER_PLUGIN_TEXT_VIEW_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace text_view_plugin {

class TextViewPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TextViewPlugin();

  virtual ~TextViewPlugin();

  // Disallow copy and assign.
  TextViewPlugin(const TextViewPlugin&) = delete;
  TextViewPlugin& operator=(const TextViewPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace text_view_plugin

#endif  // FLUTTER_PLUGIN_TEXT_VIEW_PLUGIN_H_
