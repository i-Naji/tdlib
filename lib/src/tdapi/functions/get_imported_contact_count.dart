part of '../tdapi.dart';

class GetImportedContactCount extends TdFunction {
  dynamic extra;

  /// Returns the total number of imported contacts.
  ///
  GetImportedContactCount();

  /// Parse from a json
  GetImportedContactCount.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getImportedContactCount";

  @override
  String getConstructor() => CONSTRUCTOR;
}
