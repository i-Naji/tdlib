part of '../tdapi.dart';

class NetworkStatistics extends TdObject {
  int sinceDate;
  List<List<NetworkStatisticsEntry>> entries;
  dynamic extra;

  /// A full list of available network statistic entries. 
  /// [sinceDate] Point in time (Unix timestamp) when the app began collecting statistics . 
  /// [entries] Network statistics entries
  NetworkStatistics({this.sinceDate,
    this.entries});

  /// Parse from a json
  NetworkStatistics.fromJson(Map<String, dynamic> json)  {
    this.sinceDate = json['since_date'];
    this.entries = List<List<NetworkStatisticsEntry>>.from((json['entries'] ?? []).map((item) => List<NetworkStatisticsEntry>.from((item ?? []).map((innerItem) => NetworkStatisticsEntry.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "since_date": this.sinceDate,
      "entries": this.entries.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'networkStatistics';
}