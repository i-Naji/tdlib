// Tests for the receive worker's pure helpers. No native TDLib needed.
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdlib/src/runtime/td_receive_worker.dart';

void main() {
  Uint8List bytes(Object json) => utf8.encode(jsonEncode(json));

  test('peekType reads @type without decoding', () {
    expect(peekType(bytes({'@type': 'updateFile', 'file': <String, Object>{}})),
        'updateFile');
    expect(peekType(bytes({'a': 1, '@type': 'x'})), isNull);
    expect(peekType(Uint8List(0)), isNull);
  });

  test('coalesceKey merges only full-state updates of the same object', () {
    final a = coalesceKey('updateFile', {
      '@client_id': 1,
      'file': {'id': 9},
    });
    final b = coalesceKey('updateFile', {
      '@client_id': 1,
      'file': {'id': 9, 'size': 2},
    });
    final other = coalesceKey('updateFile', {
      '@client_id': 1,
      'file': {'id': 10},
    });
    expect(a, b);
    expect(a, isNot(other));
    expect(coalesceKey('updateNewMessage', {}), isNull);
  });
}
