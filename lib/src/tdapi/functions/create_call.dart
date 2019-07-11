part of '../tdapi.dart';

class CreateCall extends TLFunction {
  int userId;
  CallProtocol protocol;
  dynamic extra;

  /// Creates a new call.
  ///[userId] Identifier of the user to be called .
  /// [protocol] Description of the call protocols supported by the client
  CreateCall({this.userId, this.protocol});

  /// Parse from a json
  CreateCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "protocol": this.protocol.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "createCall";

  @override
  String getConstructor() => CONSTRUCTOR;
}
