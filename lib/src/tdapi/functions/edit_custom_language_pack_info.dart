part of '../tdapi.dart';

class EditCustomLanguagePackInfo extends TdFunction {
  LanguagePackInfo info;
  dynamic extra;

  /// Edits information about a custom local language pack in the current localization target. Can be called before authorization.
  ///[info] New information about the custom local language pack
  EditCustomLanguagePackInfo({this.info});

  /// Parse from a json
  EditCustomLanguagePackInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "info": this.info.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "editCustomLanguagePackInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
