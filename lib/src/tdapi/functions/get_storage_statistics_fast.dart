part of '../tdapi.dart';

class GetStorageStatisticsFast extends TLFunction {
  dynamic extra;

  /// Quickly returns approximate storage usage statistics. Can be called before authorization.
  ///
  GetStorageStatisticsFast();

  /// Parse from a json
  GetStorageStatisticsFast.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getStorageStatisticsFast";

  @override
  String getConstructor() => CONSTRUCTOR;
}
