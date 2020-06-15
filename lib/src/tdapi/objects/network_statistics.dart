part of '../tdapi.dart';

class NetworkStatistics extends TdObject {
  int sinceDate;
  List<NetworkStatisticsEntry> entries;
  dynamic extra;

  /// A full list of available network statistic entries. 
  /// [sinceDate] Point in time (Unix timestamp) when the app began collecting statistics . 
  /// [entries] Network statistics entries
  NetworkStatistics({this.sinceDate,
    this.entries});

  /// Parse from a json
  NetworkStatistics.fromJson(Map<String, dynamic> json)  {
    this.sinceDate = json['since_date'];
    this.entries = List<NetworkStatisticsEntry>.from((json['entries'] ?? []).map((item) => NetworkStatisticsEntry.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "since_date": this.sinceDate,
      "entries": this.entries.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'networkStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}