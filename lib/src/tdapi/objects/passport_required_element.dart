part of '../tdapi.dart';

class PassportRequiredElement extends TdObject {
  List<PassportSuitableElement> suitableElements;

  /// Contains a description of the required Telegram Passport element that was requested by a service. 
  /// [suitableElements] List of Telegram Passport elements any of which is enough to provide
  PassportRequiredElement({this.suitableElements});

  /// Parse from a json
  PassportRequiredElement.fromJson(Map<String, dynamic> json)  {
    this.suitableElements = List<PassportSuitableElement>.from((json['suitable_elements'] ?? []).map((item) => PassportSuitableElement.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "suitable_elements": this.suitableElements.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'passportRequiredElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}