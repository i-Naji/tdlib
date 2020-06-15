part of '../tdapi.dart';

class TerminateAllOtherSessions extends TdFunction {
  dynamic extra;

  /// Terminates all other sessions of the current user
  TerminateAllOtherSessions();

  /// Parse from a json
  TerminateAllOtherSessions.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'terminateAllOtherSessions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}