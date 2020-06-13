part of '../tdapi.dart';

class GetConnectedWebsites extends TdFunction {
  dynamic extra;

  /// Returns all website where the current user used Telegram to log in
  GetConnectedWebsites();

  /// Parse from a json
  GetConnectedWebsites.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getConnectedWebsites';
}