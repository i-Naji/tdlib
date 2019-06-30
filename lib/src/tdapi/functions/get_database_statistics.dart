part of '../tdapi.dart';

class GetDatabaseStatistics extends TLFunction {
  dynamic extra;

  /// Returns database statistics.
  ///
  GetDatabaseStatistics();

  /// Parse from a json
  GetDatabaseStatistics.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
