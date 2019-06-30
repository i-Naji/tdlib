part of '../tdapi.dart';

class GetPasswordState extends TLFunction {
  dynamic extra;

  /// Returns the current state of 2-step verification.
  ///
  GetPasswordState();

  /// Parse from a json
  GetPasswordState.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'getPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
