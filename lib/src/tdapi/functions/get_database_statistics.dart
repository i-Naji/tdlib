part of '../tdapi.dart';

class GetDatabaseStatistics extends TdFunction {
  /// Returns database statistics
  GetDatabaseStatistics();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetDatabaseStatistics.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
