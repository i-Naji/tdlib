part of '../tdapi.dart';

class PassportAuthorizationForm extends TdObject {
  /// Contains information about a Telegram Passport authorization form that was requested
  PassportAuthorizationForm(
      {this.id, this.requiredElements, this.privacyPolicyUrl});

  /// [id] Unique identifier of the authorization form
  int id;

  /// [requiredElements] Information about the Telegram Passport elements that must be provided to complete the form
  List<PassportRequiredElement> requiredElements;

  /// [privacyPolicyUrl] URL for the privacy policy of the service; may be empty
  String privacyPolicyUrl;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.requiredElements = List<PassportRequiredElement>.from(
        (json['required_elements'] ?? [])
            .map((item) =>
                PassportRequiredElement.fromJson(item ?? <String, dynamic>{}))
            .toList());
    this.privacyPolicyUrl = json['privacy_policy_url'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "required_elements":
          this.requiredElements.map((i) => i.toJson()).toList(),
      "privacy_policy_url": this.privacyPolicyUrl,
    };
  }

  static const CONSTRUCTOR = 'passportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
