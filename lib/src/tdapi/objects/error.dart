part of '../tdapi.dart';

class Error implements TLObject {
  int code;
  String message;
  dynamic extra;

  /// An object of this type can be returned on every function call, in case of an error.
  ///[code] Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user.
  /// [message] Error message; subject to future changes
  Error({this.code, this.message});

  /// Parse from a json
  Error.fromJson(Map<String, dynamic> json) {
    this.code = json['code'];
    this.message = json['message'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "code": this.code, "message": this.message};
  }

  static const String CONSTRUCTOR = "error";

  @override
  String getConstructor() => CONSTRUCTOR;
}
