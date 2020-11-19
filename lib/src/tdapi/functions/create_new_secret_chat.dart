part of '../tdapi.dart';

class CreateNewSecretChat extends TdFunction {
  /// Creates a new secret chat. Returns the newly created chat
  CreateNewSecretChat({this.userId});

  /// [userId] Identifier of the target user
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CreateNewSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
