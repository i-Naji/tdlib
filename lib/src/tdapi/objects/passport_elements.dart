part of '../tdapi.dart';

class PassportElements implements TdObject {
  List elements;
  dynamic extra;

  /// Contains information about saved Telegram Passport elements.
  ///[elements] Telegram Passport elements
  PassportElements({this.elements});

  /// Parse from a json
  PassportElements.fromJson(Map<String, dynamic> json) {
    this.elements = (json['elements'] ?? [])
        .map((listValue) => PassportElement.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "passportElements";

  @override
  String getConstructor() => CONSTRUCTOR;
}
