part of '../tdapi.dart';

class GetApplicationDownloadLink extends TdFunction {

  /// Returns the link for downloading official Telegram application to be used when the current user invites friends to Telegram
  const GetApplicationDownloadLink();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetApplicationDownloadLink copyWith() => const GetApplicationDownloadLink();

  static const CONSTRUCTOR = 'getApplicationDownloadLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
