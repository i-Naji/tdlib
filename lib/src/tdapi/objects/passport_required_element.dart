part of '../tdapi.dart';

class PassportRequiredElement implements TLObject {
  List<PassportSuitableElement> suitableElements;

  /// Contains a description of the required Telegram Passport element that was requested by a service.
  ///[suitableElements] List of Telegram Passport elements any of which is enough to provide
  PassportRequiredElement({this.suitableElements});

  /// Parse from a json
  PassportRequiredElement.fromJson(Map<String, dynamic> json) {
    this.suitableElements = (json['suitable_elements'] ?? [])
        .map((listValue) => PassportSuitableElement.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'suitable_elements':
          this.suitableElements.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'passportRequiredElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
