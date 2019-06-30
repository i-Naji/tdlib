part of '../tdapi.dart';

class DeleteLanguagePack extends TLFunction {
  String languagePackId;
  dynamic extra;

  /// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted. Can be called before authorization.
  ///[languagePackId] Identifier of the language pack to delete
  DeleteLanguagePack({this.languagePackId});

  /// Parse from a json
  DeleteLanguagePack.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'language_pack_id': this.languagePackId,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'deleteLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
}
