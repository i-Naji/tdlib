part of '../tdapi.dart';

class GetCreatedPublicChats extends TdFunction {
  PublicChatType type;
  dynamic extra;

  /// Returns a list of public chats of the specified type, owned by the user. 
  /// [type] Type of the public chats to return
  GetCreatedPublicChats({this.type});

  /// Parse from a json
  GetCreatedPublicChats.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getCreatedPublicChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}