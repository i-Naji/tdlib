part of '../tdapi.dart';

class GetCurrentState extends TLFunction {
  dynamic extra;

  /// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState.
  ///
  GetCurrentState();

  /// Parse from a json
  GetCurrentState.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getCurrentState";

  @override
  String getConstructor() => CONSTRUCTOR;
}
