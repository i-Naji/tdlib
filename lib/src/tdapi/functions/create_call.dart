part of '../tdapi.dart';

class CreateCall extends TdFunction {

  /// Creates a new call
  CreateCall({this.userId,
    this.protocol});

  /// [userId] Identifier of the user to be called 
  int userId;

  /// [protocol] Description of the call protocols supported by the application
  CallProtocol protocol;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CreateCall.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "protocol": this.protocol == null ? null : this.protocol.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}