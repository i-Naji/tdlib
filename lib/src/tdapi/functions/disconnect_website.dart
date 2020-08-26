part of '../tdapi.dart';

class DisconnectWebsite extends TdFunction {
  String websiteId;
  dynamic extra;

  /// Disconnects website from the current user's Telegram account. 
  /// [websiteId] Website identifier
  DisconnectWebsite({this.websiteId});

  /// Parse from a json
  DisconnectWebsite.fromJson(Map<String, dynamic> json) ;

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