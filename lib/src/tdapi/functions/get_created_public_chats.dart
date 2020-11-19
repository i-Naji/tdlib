part of '../tdapi.dart';

class GetCreatedPublicChats extends TdFunction {
  /// Returns a list of public chats of the specified type, owned by the user
  GetCreatedPublicChats({this.type});

  /// [type] Type of the public chats to return
  PublicChatType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetCreatedPublicChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type == null ? null : this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getCreatedPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
