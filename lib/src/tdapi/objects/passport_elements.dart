part of '../tdapi.dart';

class PassportElements extends TdObject {
  List<List<PassportElement>> elements;
  dynamic extra;

  /// Contains information about saved Telegram Passport elements. 
  /// [elements] Telegram Passport elements
  PassportElements({this.elements});

  /// Parse from a json
  PassportElements.fromJson(Map<String, dynamic> json)  {
    this.elements = List<List<PassportElement>>.from((json['elements'] ?? []).map((item) => List<PassportElement>.from((item ?? []).map((innerItem) => PassportElement.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportElements';
}