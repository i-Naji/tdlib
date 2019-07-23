part of '../tdapi.dart';

class AcceptTermsOfService extends TdFunction {
  String termsOfServiceId;
  dynamic extra;

  /// Accepts Telegram terms of services.
  ///[termsOfServiceId] Terms of service identifier
  AcceptTermsOfService({this.termsOfServiceId});

  /// Parse from a json
  AcceptTermsOfService.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service_id": this.termsOfServiceId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "acceptTermsOfService";

  @override
  String getConstructor() => CONSTRUCTOR;
}
