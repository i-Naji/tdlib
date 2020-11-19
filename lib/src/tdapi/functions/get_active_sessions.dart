part of '../tdapi.dart';

class GetActiveSessions extends TdFunction {
  /// Returns all active sessions of the current user
  GetActiveSessions();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetActiveSessions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getActiveSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
