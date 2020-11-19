part of '../tdapi.dart';

class DisconnectWebsite extends TdFunction {
  /// Disconnects website from the current user's Telegram account
  DisconnectWebsite({this.websiteId});

  /// [websiteId] Website identifier
  int websiteId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DisconnectWebsite.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "website_id": this.websiteId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'disconnectWebsite';

  @override
  String getConstructor() => CONSTRUCTOR;
}
