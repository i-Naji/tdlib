part of '../tdapi.dart';

class PassportElements extends TdObject {
  /// Contains information about saved Telegram Passport elements
  PassportElements({this.elements});

  /// [elements] Telegram Passport elements
  List<PassportElement> elements;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElements.fromJson(Map<String, dynamic> json) {
    this.elements = List<PassportElement>.from((json['elements'] ?? [])
        .map((item) => PassportElement.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportElements';

  @override
  String getConstructor() => CONSTRUCTOR;
}
