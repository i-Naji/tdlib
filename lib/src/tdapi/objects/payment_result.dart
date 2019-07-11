part of '../tdapi.dart';

class PaymentResult implements TLObject {
  bool success;
  String verificationUrl;
  dynamic extra;

  /// Contains the result of a payment request.
  ///[success] True, if the payment request was successful; otherwise the verification_url will be not empty .
  /// [verificationUrl] URL for additional payment credentials verification
  PaymentResult({this.success, this.verificationUrl});

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
      "verification_url": this.verificationUrl
    };
  }

  static const String CONSTRUCTOR = "paymentResult";

  @override
  String getConstructor() => CONSTRUCTOR;
}
