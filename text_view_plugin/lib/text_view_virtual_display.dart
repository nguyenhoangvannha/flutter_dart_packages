import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeTextViewVirtualDisplay extends StatelessWidget {
  const NativeTextViewVirtualDisplay({super.key, required this.initialText});

  final String initialText;

  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType =
        'io.github.nguyenhoangvannha.plugins.flutter.text_view_plugin.TextViewNativeView';
    // Pass parameters to the platform side.
    Map<String, dynamic> creationParams = <String, dynamic>{
      "initialText": initialText,
    };

    return AndroidView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
