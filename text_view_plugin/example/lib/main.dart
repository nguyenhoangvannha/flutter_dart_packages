import 'package:flutter/material.dart';

import 'package:text_view_plugin/text_view_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _textViewPlugin = TextViewPlugin();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                  height: 30,
                  child: NativeTextViewHybridComposition(
                    initialText: 'Hello world',
                  )),
              ElevatedButton(
                  onPressed: () {
                    _textViewPlugin.setText("Goodbye world");
                  },
                  child: Text("Set text Goodbye world")),
            ],
          ),
        ),
      ),
    );
  }
}
