part of '../tdapi.dart';

class PassportRequiredElement extends TdObject {
  List<List<PassportSuitableElement>> suitableElements;

  /// Contains a description of the required Telegram Passport element that was requested by a service. 
  /// [suitableElements] List of Telegram Passport elements any of which is enough to provide
  PassportRequiredElement({this.suitableElements});

  /// Parse from a json
  PassportRequiredElement.fromJson(Map<String, dynamic> json)  {
    this.suitableElements = List<List<PassportSuitableElement>>.from((json['suitable_elements'] ?? []).map((item) => List<PassportSuitableElement>.from((item ?? []).map((innerItem) => PassportSuitableElement.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "suitable_elements": this.suitableElements.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportRequiredElement';
}