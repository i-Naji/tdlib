part of '../tdapi.dart';

class PassportAuthorizationForm implements TdObject {
  int id;
  List<PassportRequiredElement> requiredElements;
  String privacyPolicyUrl;
  dynamic extra;

  /// Contains information about a Telegram Passport authorization form that was requested.
  ///[id] Unique identifier of the authorization form.
  /// [requiredElements] Information about the Telegram Passport elements that need to be provided to complete the form.
  /// [privacyPolicyUrl] URL for the privacy policy of the service; may be empty
  PassportAuthorizationForm(
      {this.id, this.requiredElements, this.privacyPolicyUrl});

  /// Parse from a json
  PassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.requiredElements = List<PassportRequiredElement>.from(
        (json['required_elements'] ?? [])
            .map((listValue) => PassportRequiredElement.fromJson(listValue))
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
          this.requiredElements.map((listItem) => listItem.toJson()).toList(),
      "privacy_policy_url": this.privacyPolicyUrl
    };
  }

  static const String CONSTRUCTOR = "passportAuthorizationForm";

  @override
  String getConstructor() => CONSTRUCTOR;
}
