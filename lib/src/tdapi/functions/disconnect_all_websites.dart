part of '../tdapi.dart';

class DisconnectAllWebsites extends TdFunction {

  /// Disconnects all websites from the current user's Telegram account
  const DisconnectAllWebsites();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  DisconnectAllWebsites copyWith() => const DisconnectAllWebsites();

  static const CONSTRUCTOR = 'disconnectAllWebsites';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
