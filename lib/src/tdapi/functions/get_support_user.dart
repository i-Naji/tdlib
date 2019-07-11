part of '../tdapi.dart';

class GetSupportUser extends TLFunction {
  dynamic extra;

  /// Returns a user that can be contacted to get support.
  ///
  GetSupportUser();

  /// Parse from a json
  GetSupportUser.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getSupportUser";

  @override
  String getConstructor() => CONSTRUCTOR;
}
