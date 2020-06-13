part of '../tdapi.dart';

class PassportElementsWithErrors extends TdObject {
  List<List<PassportElement>> elements;
  List<List<PassportElementError>> errors;
  dynamic extra;

  /// Contains information about a Telegram Passport elements and corresponding errors. 
  /// [elements] Telegram Passport elements . 
  /// [errors] Errors in the elements that are already available
  PassportElementsWithErrors({this.elements,
    this.errors});

  /// Parse from a json
  PassportElementsWithErrors.fromJson(Map<String, dynamic> json)  {
    this.elements = List<List<PassportElement>>.from((json['elements'] ?? []).map((item) => List<PassportElement>.from((item ?? []).map((innerItem) => PassportElement.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.errors = List<List<PassportElementError>>.from((json['errors'] ?? []).map((item) => List<PassportElementError>.from((item ?? []).map((innerItem) => PassportElementError.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "errors": this.errors.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportElementsWithErrors';
}