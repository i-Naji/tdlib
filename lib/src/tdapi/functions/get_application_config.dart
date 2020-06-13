part of '../tdapi.dart';

class GetApplicationConfig extends TdFunction {
  dynamic extra;

  /// Returns application config, provided by the server. Can be called before authorization
  GetApplicationConfig();

  /// Parse from a json
  GetApplicationConfig.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getApplicationConfig';
}