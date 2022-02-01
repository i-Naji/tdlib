part of '../tdapi.dart';

class PassportAuthorizationForm extends TdObject {

  /// Contains information about a Telegram Passport authorization form that was requested
  const PassportAuthorizationForm({
    required this.id,
    required this.requiredElements,
    required this.privacyPolicyUrl,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique identifier of the authorization form
  final int id;

  /// [requiredElements] Telegram Passport elements that must be provided to complete the form
  final List<PassportRequiredElement> requiredElements;

  /// [privacyPolicyUrl] URL for the privacy policy of the service; may be empty
  final String privacyPolicyUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportAuthorizationForm.fromJson(Map<String, dynamic> json) => PassportAuthorizationForm(
    id: json['id'],
    requiredElements: List<PassportRequiredElement>.from((json['required_elements'] ?? []).map((item) => PassportRequiredElement.fromJson(item)).toList()),
    privacyPolicyUrl: json['privacy_policy_url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "required_elements": requiredElements.map((i) => i.toJson()).toList(),
      "privacy_policy_url": privacyPolicyUrl,
    };
  }
  
  PassportAuthorizationForm copyWith({
    int? id,
    List<PassportRequiredElement>? requiredElements,
    String? privacyPolicyUrl,
    dynamic extra,
    int? clientId,
  }) => PassportAuthorizationForm(
    id: id ?? this.id,
    requiredElements: requiredElements ?? this.requiredElements,
    privacyPolicyUrl: privacyPolicyUrl ?? this.privacyPolicyUrl,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportAuthorizationForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
