part of '../tdapi.dart';

class GetStorageStatisticsFast extends TdFunction {
  /// Quickly returns approximate storage usage statistics. Can be called before authorization
  GetStorageStatisticsFast();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetStorageStatisticsFast.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getStorageStatisticsFast';

  @override
  String getConstructor() => CONSTRUCTOR;
}
