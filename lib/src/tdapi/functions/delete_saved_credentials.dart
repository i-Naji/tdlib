part of '../tdapi.dart';

class DeleteSavedCredentials extends TLFunction {
  dynamic extra;

  /// Deletes saved credentials for all payment provider bots.
  ///
  DeleteSavedCredentials();

  /// Parse from a json
  DeleteSavedCredentials.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "deleteSavedCredentials";

  @override
  String getConstructor() => CONSTRUCTOR;
}
