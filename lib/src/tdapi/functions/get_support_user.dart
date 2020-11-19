part of '../tdapi.dart';

class GetSupportUser extends TdFunction {
  /// Returns a user that can be contacted to get support
  GetSupportUser();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetSupportUser.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSupportUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
