part of '../tdapi.dart';

class AcceptTermsOfService extends TdFunction {

  /// Accepts Telegram terms of services
  const AcceptTermsOfService({
    required this.termsOfServiceId,
  });
  
  /// [termsOfServiceId] Terms of service identifier
  final String termsOfServiceId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service_id": termsOfServiceId,
      "@extra": extra,
    };
  }
  
  AcceptTermsOfService copyWith({
    String? termsOfServiceId,
  }) => AcceptTermsOfService(
    termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
  );

  static const CONSTRUCTOR = 'acceptTermsOfService';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
