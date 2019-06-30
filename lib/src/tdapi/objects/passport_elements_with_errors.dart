part of '../tdapi.dart';

class PassportElementsWithErrors implements TLObject {
  List elements;
  List<PassportElementError> errors;
  dynamic extra;

  /// Contains information about a Telegram Passport elements and corresponding errors.
  ///[elements] Telegram Passport elements .
  /// [errors] Errors in the elements that are already available
  PassportElementsWithErrors({this.elements, this.errors});

  /// Parse from a json
  PassportElementsWithErrors.fromJson(Map<String, dynamic> json) {
    this.elements = (json['elements'] ?? [])
        .map((listValue) => PassportElement.fromJson(listValue))
        .toList();
    this.errors = (json['errors'] ?? [])
        .map((listValue) => PassportElementError.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'elements': this.elements.map((listItem) => listItem.toJson()).toList(),
      'errors': this.errors.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'passportElementsWithErrors';

  @override
  String getConstructor() => CONSTRUCTOR;
}
