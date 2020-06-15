part of '../tdapi.dart';

class ChatAdministrators extends TdObject {
  List<ChatAdministrator> administrators;
  dynamic extra;

  /// Represents a list of chat administrators. 
  /// [administrators] A list of chat administrators
  ChatAdministrators({this.administrators});

  /// Parse from a json
  ChatAdministrators.fromJson(Map<String, dynamic> json)  {
    this.administrators = List<ChatAdministrator>.from((json['administrators'] ?? []).map((item) => ChatAdministrator.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "administrators": this.administrators.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatAdministrators';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}