import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testdialogplugin/testdialogplugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('testdialogplugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Testdialogplugin.platformVersion, '42');
  });
}
