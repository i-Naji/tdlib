part of '../tdapi.dart';

class GetImportedContactCount extends TdFunction {
  /// Returns the total number of imported contacts
  GetImportedContactCount();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetImportedContactCount.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getImportedContactCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
