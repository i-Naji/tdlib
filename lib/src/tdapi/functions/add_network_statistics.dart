part of '../tdapi.dart';

class AddNetworkStatistics extends TdFunction {
  /// Adds the specified data to data usage statistics. Can be called before authorization
  AddNetworkStatistics({this.entry});

  /// [entry] The network statistics entry with the data to be added to statistics
  NetworkStatisticsEntry entry;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AddNetworkStatistics.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "entry": this.entry == null ? null : this.entry.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
