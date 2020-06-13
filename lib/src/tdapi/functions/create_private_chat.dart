part of '../tdapi.dart';

class CreatePrivateChat extends TdFunction {
  int userId;
  bool force;
  dynamic extra;

  /// Returns an existing chat corresponding to a given user. 
  /// [userId] User identifier . 
  /// [force] If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  CreatePrivateChat({this.userId,
    this.force});

  /// Parse from a json
  CreatePrivateChat.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createPrivateChat';
}