part of '../tdapi.dart';

class EditCustomLanguagePackInfo extends TdFunction {

  /// Edits information about a custom local language pack in the current localization target. Can be called before authorization
  const EditCustomLanguagePackInfo({
    required this.info,
  });
  
  /// [info] New information about the custom local language pack
  final LanguagePackInfo info;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "info": info.toJson(),
      "@extra": extra,
    };
  }
  
  EditCustomLanguagePackInfo copyWith({
    LanguagePackInfo? info,
  }) => EditCustomLanguagePackInfo(
    info: info ?? this.info,
  );

  static const CONSTRUCTOR = 'editCustomLanguagePackInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
