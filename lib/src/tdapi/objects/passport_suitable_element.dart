part of '../tdapi.dart';

class PassportSuitableElement extends TdObject {
  /// Contains information about a Telegram Passport element that was requested by a service
  PassportSuitableElement(
      {this.type,
      this.isSelfieRequired,
      this.isTranslationRequired,
      this.isNativeNameRequired});

  /// [type] Type of the element
  PassportElementType type;

  /// [isSelfieRequired] True, if a selfie is required with the identity document
  bool isSelfieRequired;

  /// [isTranslationRequired] True, if a certified English translation is required with the document
  bool isTranslationRequired;

  /// [isNativeNameRequired] True, if personal details must include the user's name in the language of their country of residence
  bool isNativeNameRequired;

  /// Parse from a json
  PassportSuitableElement.fromJson(Map<String, dynamic> json) {
    this.type =
        PassportElementType.fromJson(json['type'] ?? <String, dynamic>{});
    this.isSelfieRequired = json['is_selfie_required'];
    this.isTranslationRequired = json['is_translation_required'];
    this.isNativeNameRequired = json['is_native_name_required'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type == null ? null : this.type.toJson(),
      "is_selfie_required": this.isSelfieRequired,
      "is_translation_required": this.isTranslationRequired,
      "is_native_name_required": this.isNativeNameRequired,
    };
  }

  static const CONSTRUCTOR = 'passportSuitableElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
