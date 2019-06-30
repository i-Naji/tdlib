part of '../tdapi.dart';

class GetLanguagePackStrings extends TLFunction {
  String languagePackId;
  List<String> keys;
  dynamic extra;

  /// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization.
  ///[languagePackId] Language pack identifier of the strings to be returned .
  /// [keys] Language pack keys of the strings to be returned; leave empty to request all available strings
  GetLanguagePackStrings({this.languagePackId, this.keys});

  /// Parse from a json
  GetLanguagePackStrings.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'language_pack_id': this.languagePackId,
      'keys': this.keys,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'getLanguagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
