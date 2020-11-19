part of '../tdapi.dart';

class PassportElementsWithErrors extends TdObject {
  /// Contains information about a Telegram Passport elements and corresponding errors
  PassportElementsWithErrors({this.elements, this.errors});

  /// [elements] Telegram Passport elements
  List<PassportElement> elements;

  /// [errors] Errors in the elements that are already available
  List<PassportElementError> errors;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementsWithErrors.fromJson(Map<String, dynamic> json) {
    this.elements = List<PassportElement>.from((json['elements'] ?? [])
        .map((item) => PassportElement.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.errors = List<PassportElementError>.from((json['errors'] ?? [])
        .map((item) =>
            PassportElementError.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.toJson()).toList(),
      "errors": this.errors.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportElementsWithErrors';

  @override
  String getConstructor() => CONSTRUCTOR;
}
