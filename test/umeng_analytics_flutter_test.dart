import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:umeng_analytics_flutter/umeng_analytics_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('umeng_analytics_flutter');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await UmengAnalyticsFlutter.platformVersion, '42');
  });
}
