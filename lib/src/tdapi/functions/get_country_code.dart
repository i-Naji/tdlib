part of '../tdapi.dart';

class GetCountryCode extends TLFunction {
  dynamic extra;

  /// Uses current user IP to found his country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization.
  ///
  GetCountryCode();

  /// Parse from a json
  GetCountryCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getCountryCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
