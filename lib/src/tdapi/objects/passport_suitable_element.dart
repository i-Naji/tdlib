part of '../tdapi.dart';

class PassportSuitableElement extends TdObject {

  /// Contains information about a Telegram Passport element that was requested by a service
  const PassportSuitableElement({
    required this.type,
    required this.isSelfieRequired,
    required this.isTranslationRequired,
    required this.isNativeNameRequired,
  });
  
  /// [type] Type of the element 
  final PassportElementType type;

  /// [isSelfieRequired] True, if a selfie is required with the identity document
  final bool isSelfieRequired;

  /// [isTranslationRequired] True, if a certified English translation is required with the document
  final bool isTranslationRequired;

  /// [isNativeNameRequired] True, if personal details must include the user's name in the language of their country of residence
  final bool isNativeNameRequired;
  
  /// Parse from a json
  factory PassportSuitableElement.fromJson(Map<String, dynamic> json) => PassportSuitableElement(
    type: PassportElementType.fromJson(json['type']),
    isSelfieRequired: json['is_selfie_required'],
    isTranslationRequired: json['is_translation_required'],
    isNativeNameRequired: json['is_native_name_required'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "is_selfie_required": isSelfieRequired,
      "is_translation_required": isTranslationRequired,
      "is_native_name_required": isNativeNameRequired,
    };
  }
  
  PassportSuitableElement copyWith({
    PassportElementType? type,
    bool? isSelfieRequired,
    bool? isTranslationRequired,
    bool? isNativeNameRequired,
  }) => PassportSuitableElement(
    type: type ?? this.type,
    isSelfieRequired: isSelfieRequired ?? this.isSelfieRequired,
    isTranslationRequired: isTranslationRequired ?? this.isTranslationRequired,
    isNativeNameRequired: isNativeNameRequired ?? this.isNativeNameRequired,
  );

  static const CONSTRUCTOR = 'passportSuitableElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
