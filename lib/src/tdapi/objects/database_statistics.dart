part of '../tdapi.dart';

class DatabaseStatistics extends TdObject {
  String statistics;
  dynamic extra;

  /// Contains database statistics. 
  /// [statistics] Database statistics in an unspecified human-readable format
  DatabaseStatistics({this.statistics});

  /// Parse from a json
  DatabaseStatistics.fromJson(Map<String, dynamic> json)  {
    this.statistics = json['statistics'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "statistics": this.statistics,
    };
  }

  static const CONSTRUCTOR = 'databaseStatistics';
}