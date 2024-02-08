//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <text_view_plugin/text_view_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) text_view_plugin_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TextViewPlugin");
  text_view_plugin_register_with_registrar(text_view_plugin_registrar);
}
