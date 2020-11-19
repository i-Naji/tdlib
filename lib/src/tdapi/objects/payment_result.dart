part of '../tdapi.dart';

class PaymentResult extends TdObject {
  /// Contains the result of a payment request
  PaymentResult({this.success, this.verificationUrl});

  /// [success] True, if the payment request was successful; otherwise the verification_url will be not empty
  bool success;

  /// [verificationUrl] URL for additional payment credentials verification
  String verificationUrl;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PaymentResult.fromJson(Map<String, dynamic> json) {
    this.success = json['success'];
    this.verificationUrl = json['verification_url'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "success": this.success,
      "verification_url": this.verificationUrl,
    };
  }

  static const CONSTRUCTOR = 'paymentResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}
