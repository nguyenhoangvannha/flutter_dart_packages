import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class NativeTextViewHybridComposition extends StatelessWidget {
  final String initialText;

  const NativeTextViewHybridComposition({super.key, required this.initialText});

  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType =
        'io.github.nguyenhoangvannha.plugins.flutter.text_view_plugin.TextViewNativeView';
    // Pass parameters to the platform side.
    Map<String, dynamic> creationParams = <String, dynamic>{
      "initialText": initialText,
    };

    return PlatformViewLink(
      viewType: viewType,
      surfaceFactory: (context, controller) {
        return AndroidViewSurface(
          controller: controller as AndroidViewController,
          gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
          hitTestBehavior: PlatformViewHitTestBehavior.opaque,
        );
      },
      onCreatePlatformView: (params) {
        return PlatformViewsService.initSurfaceAndroidView(
          id: params.id,
          viewType: viewType,
          layoutDirection: TextDirection.ltr,
          creationParams: creationParams,
          creationParamsCodec: const StandardMessageCodec(),
          onFocus: () {
            params.onFocusChanged(true);
          },
        )
          ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
          ..create();
      },
    );
  }
}
