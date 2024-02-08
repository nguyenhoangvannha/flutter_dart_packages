package io.github.nguyenhoangvannha.plugins.flutter.text_view_plugin

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel

/** TextViewPlugin */
class TextViewPlugin : FlutterPlugin {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "text_view_plugin")
        flutterPluginBinding.platformViewRegistry.registerViewFactory(
            "io.github.nguyenhoangvannha.plugins.flutter.text_view_plugin.TextViewNativeView",
            TextViewNativeViewFactory(channel)
        )
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
