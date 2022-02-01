part of '../tdapi.dart';

class ConfirmQrCodeAuthentication extends TdFunction {

  /// Confirms QR code authentication on another device. Returns created session on success
  const ConfirmQrCodeAuthentication({
    required this.link,
  });
  
  /// [link] A link from a QR code. The link must be scanned by the in-app camera
  final String link;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
      "@extra": extra,
    };
  }
  
  ConfirmQrCodeAuthentication copyWith({
    String? link,
  }) => ConfirmQrCodeAuthentication(
    link: link ?? this.link,
  );

  static const CONSTRUCTOR = 'confirmQrCodeAuthentication';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
