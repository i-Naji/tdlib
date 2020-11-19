part of '../tdapi.dart';

class GetConnectedWebsites extends TdFunction {
  /// Returns all website where the current user used Telegram to log in
  GetConnectedWebsites();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetConnectedWebsites.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getConnectedWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
