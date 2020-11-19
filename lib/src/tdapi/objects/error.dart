part of '../tdapi.dart';

class TdError extends TdObject {
  /// An object of this type can be returned on every function call, in case of an error
  TdError({this.code, this.message});

  /// [code] Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user
  int code;

  /// [message] Error message; subject to future changes
  String message;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TdError.fromJson(Map<String, dynamic> json) {
    this.code = json['code'];
    this.message = json['message'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "message": this.message,
    };
  }

  static const CONSTRUCTOR = 'error';

  @override
  String getConstructor() => CONSTRUCTOR;
}
