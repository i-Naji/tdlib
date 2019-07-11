part of '../tdapi.dart';

class NetworkStatistics implements TLObject {
  int sinceDate;
  List entries;
  dynamic extra;

  /// A full list of available network statistic entries.
  ///[sinceDate] Point in time (Unix timestamp) when the app began collecting statistics .
  /// [entries] Network statistics entries
  NetworkStatistics({this.sinceDate, this.entries});

  /// Parse from a json
  NetworkStatistics.fromJson(Map<String, dynamic> json) {
    this.sinceDate = json['since_date'];
    this.entries = (json['entries'] ?? [])
        .map((listValue) => NetworkStatisticsEntry.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "since_date": this.sinceDate,
      "entries": this.entries.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "networkStatistics";

  @override
  String getConstructor() => CONSTRUCTOR;
}
