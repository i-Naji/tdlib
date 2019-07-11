part of '../tdapi.dart';

class GetActiveSessions extends TLFunction {
  dynamic extra;

  /// Returns all active sessions of the current user.
  ///
  GetActiveSessions();

  /// Parse from a json
  GetActiveSessions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getActiveSessions";

  @override
  String getConstructor() => CONSTRUCTOR;
}
