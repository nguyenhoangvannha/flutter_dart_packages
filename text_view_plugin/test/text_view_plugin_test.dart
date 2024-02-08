import 'package:flutter_test/flutter_test.dart';
import 'package:text_view_plugin/text_view_plugin.dart';
import 'package:text_view_plugin/text_view_plugin_platform_interface.dart';
import 'package:text_view_plugin/text_view_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTextViewPluginPlatform
    with MockPlatformInterfaceMixin
    implements TextViewPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TextViewPluginPlatform initialPlatform = TextViewPluginPlatform.instance;

  test('$MethodChannelTextViewPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTextViewPlugin>());
  });

  test('getPlatformVersion', () async {
    TextViewPlugin textViewPlugin = TextViewPlugin();
    MockTextViewPluginPlatform fakePlatform = MockTextViewPluginPlatform();
    TextViewPluginPlatform.instance = fakePlatform;

    expect(await textViewPlugin.getPlatformVersion(), '42');
  });
}
