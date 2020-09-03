import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluwx/fluwx.dart';

void main() {
  const MethodChannel channel = MethodChannel('fluwx');

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
    expect(await Fluwx.platformVersion, '42');
  });
}
