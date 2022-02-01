part of '../tdapi.dart';

class TestBytes extends TdObject {

  /// A simple object containing a sequence of bytes; for testing only
  const TestBytes({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] Bytes
  final String value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestBytes.fromJson(Map<String, dynamic> json) => TestBytes(
    value: json['value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value,
    };
  }
  
  TestBytes copyWith({
    String? value,
    dynamic extra,
    int? clientId,
  }) => TestBytes(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'testBytes';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
