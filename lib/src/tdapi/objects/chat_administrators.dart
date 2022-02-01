part of '../tdapi.dart';

class ChatAdministrators extends TdObject {

  /// Represents a list of chat administrators
  const ChatAdministrators({
    required this.administrators,
    this.extra,
    this.clientId,
  });
  
  /// [administrators] A list of chat administrators
  final List<ChatAdministrator> administrators;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatAdministrators.fromJson(Map<String, dynamic> json) => ChatAdministrators(
    administrators: List<ChatAdministrator>.from((json['administrators'] ?? []).map((item) => ChatAdministrator.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "administrators": administrators.map((i) => i.toJson()).toList(),
    };
  }
  
  ChatAdministrators copyWith({
    List<ChatAdministrator>? administrators,
    dynamic extra,
    int? clientId,
  }) => ChatAdministrators(
    administrators: administrators ?? this.administrators,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatAdministrators';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
