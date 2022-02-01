part of '../tdapi.dart';

class AddNetworkStatistics extends TdFunction {

  /// Adds the specified data to data usage statistics. Can be called before authorization
  const AddNetworkStatistics({
    required this.entry,
  });
  
  /// [entry] The network statistics entry with the data to be added to statistics
  final NetworkStatisticsEntry entry;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "entry": entry.toJson(),
      "@extra": extra,
    };
  }
  
  AddNetworkStatistics copyWith({
    NetworkStatisticsEntry? entry,
  }) => AddNetworkStatistics(
    entry: entry ?? this.entry,
  );

  static const CONSTRUCTOR = 'addNetworkStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
