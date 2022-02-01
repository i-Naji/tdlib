part of '../tdapi.dart';

class GetConnectedWebsites extends TdFunction {

  /// Returns all website where the current user used Telegram to log in
  const GetConnectedWebsites();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetConnectedWebsites copyWith() => const GetConnectedWebsites();

  static const CONSTRUCTOR = 'getConnectedWebsites';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
