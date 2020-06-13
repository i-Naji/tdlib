part of '../tdapi.dart';

class Ok extends TdObject {
  dynamic extra;

  /// An object of this type is returned on a successful function call for certain functions
  Ok();

  /// Parse from a json
  Ok.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'ok';
}