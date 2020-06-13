part of '../tdapi.dart';

class ConfirmQrCodeAuthentication extends TdFunction {
  String link;
  dynamic extra;

  /// Confirms QR code authentication on another device. Returns created session on success. 
  /// [link] A link from a QR code. The link must be scanned by the in-app camera
  ConfirmQrCodeAuthentication({this.link});

  /// Parse from a json
  ConfirmQrCodeAuthentication.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": this.link,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'confirmQrCodeAuthentication';
}