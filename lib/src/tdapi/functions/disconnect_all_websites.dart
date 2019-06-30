part of '../tdapi.dart';

class DisconnectAllWebsites extends TLFunction {
  dynamic extra;

  /// Disconnects all websites from the current user's Telegram account.
  ///
  DisconnectAllWebsites();

  /// Parse from a json
  DisconnectAllWebsites.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'disconnectAllWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
