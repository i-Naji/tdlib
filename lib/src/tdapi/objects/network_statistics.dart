part of '../tdapi.dart';

class NetworkStatistics extends TdObject {
  /// A full list of available network statistic entries
  const NetworkStatistics({
    required this.sinceDate,
    required this.entries,
    this.extra,
    this.clientId,
  });

  /// [sinceDate] Point in time (Unix timestamp) from which the statistics are collected
  final int sinceDate;

  /// [entries] Network statistics entries
  final List<NetworkStatisticsEntry> entries;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory NetworkStatistics.fromJson(Map<String, dynamic> json) =>
      NetworkStatistics(
        sinceDate: json['since_date'],
        entries: List<NetworkStatisticsEntry>.from((json['entries'] ?? [])
            .map((item) => NetworkStatisticsEntry.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "since_date": sinceDate,
      "entries": entries.map((i) => i.toJson()).toList(),
    };
  }

  NetworkStatistics copyWith({
    int? sinceDate,
    List<NetworkStatisticsEntry>? entries,
    dynamic extra,
    int? clientId,
  }) =>
      NetworkStatistics(
        sinceDate: sinceDate ?? this.sinceDate,
        entries: entries ?? this.entries,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'networkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
