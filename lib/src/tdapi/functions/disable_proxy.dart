part of '../tdapi.dart';

class DisableProxy extends TLFunction {
  dynamic extra;

  /// Disables the currently enabled proxy. Can be called before authorization.
  ///
  DisableProxy();

  /// Parse from a json
  DisableProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "disableProxy";

  @override
  String getConstructor() => CONSTRUCTOR;
}
