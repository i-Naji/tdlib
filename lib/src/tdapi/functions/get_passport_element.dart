part of '../tdapi.dart';

class GetPassportElement extends TdFunction {
  /// Returns one of the available Telegram Passport elements
  GetPassportElement({this.type, this.password});

  /// [type] Telegram Passport element type
  PassportElementType type;

  /// [password] Password of the current user
  String password;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetPassportElement.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type == null ? null : this.type.toJson(),
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
