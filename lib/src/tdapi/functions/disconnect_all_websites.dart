part of '../tdapi.dart';

class DisconnectAllWebsites extends TdFunction {
  /// Disconnects all websites from the current user's Telegram account
  DisconnectAllWebsites();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DisconnectAllWebsites.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'disconnectAllWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
