part of '../tdapi.dart';

class GetLanguagePackStrings extends TdFunction {
  String languagePackId;
  List<List<String>> keys;
  dynamic extra;

  /// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization. 
  /// [languagePackId] Language pack identifier of the strings to be returned . 
  /// [keys] Language pack keys of the strings to be returned; leave empty to request all available strings
  GetLanguagePackStrings({this.languagePackId,
    this.keys});

  /// Parse from a json
  GetLanguagePackStrings.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "keys": this.keys.map((i) => i.map((ii) => ii).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLanguagePackStrings';
}