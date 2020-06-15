part of '../tdapi.dart';

class CheckCreatedPublicChatsLimit extends TdFunction {
  PublicChatType type;
  dynamic extra;

  /// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached. 
  /// [type] Type of the public chats, for which to check the limit
  CheckCreatedPublicChatsLimit({this.type});

  /// Parse from a json
  CheckCreatedPublicChatsLimit.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkCreatedPublicChatsLimit';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}