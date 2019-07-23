import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdlib/td_api.dart' as TdApi;

void main() {
  const MethodChannel channel = MethodChannel('tdlib');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(TdApi.TestGetDifference(), '42');
  });
}
