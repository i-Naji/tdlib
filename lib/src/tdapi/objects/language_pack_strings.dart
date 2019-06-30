part of '../tdapi.dart';

class LanguagePackStrings implements TLObject {
  List<LanguagePackString> strings;
  dynamic extra;

  /// Contains a list of language pack strings.
  ///[strings] A list of language pack strings
  LanguagePackStrings({this.strings});

  /// Parse from a json
  LanguagePackStrings.fromJson(Map<String, dynamic> json) {
    this.strings = (json['strings'] ?? [])
        .map((listValue) => LanguagePackString.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'strings': this.strings.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'languagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
