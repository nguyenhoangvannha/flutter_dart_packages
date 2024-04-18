package io.github.nguyenhoangvannha.plugins.flutter.text_view_plugin

import android.content.Context
import android.graphics.Color
import android.view.View
import android.widget.TextView
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.platform.PlatformView

internal class TextViewNativeView(
    context: Context,
    id: Int,
    creationParams: Map<String?, Any?>?,
    channel: MethodChannel
) :
    PlatformView, MethodCallHandler {
    private val textView: TextView

    override fun getView(): View {
        return textView
    }

    override fun dispose() {}

    init {
        textView = TextView(context)
        textView.textSize = 14f
        textView.setBackgroundColor(Color.rgb(255, 255, 255))
        textView.text =
            context.getString(R.string.rendered_on_a_native_android_view_id, id) + (creationParams?.get(
                "initialText"
            ) ?: "")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        if (call.method == "setText") {
            val text = call.argument<String>("text")
            textView.text = text
            result.success("Set text success $text")
        } else {
            result.notImplemented()
        }
    }
}