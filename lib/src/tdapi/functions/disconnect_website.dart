part of '../tdapi.dart';

class DisconnectWebsite extends TdFunction {

  /// Disconnects website from the current user's Telegram account
  const DisconnectWebsite({
    required this.websiteId,
  });
  
  /// [websiteId] Website identifier
  final int websiteId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "website_id": websiteId,
      "@extra": extra,
    };
  }
  
  DisconnectWebsite copyWith({
    int? websiteId,
  }) => DisconnectWebsite(
    websiteId: websiteId ?? this.websiteId,
  );

  static const CONSTRUCTOR = 'disconnectWebsite';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
