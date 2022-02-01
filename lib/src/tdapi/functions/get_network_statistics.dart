part of '../tdapi.dart';

class GetNetworkStatistics extends TdFunction {

  /// Returns network data usage statistics. Can be called before authorization
  const GetNetworkStatistics({
    required this.onlyCurrent,
  });
  
  /// [onlyCurrent] If true, returns only data for the current library launch
  final bool onlyCurrent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "only_current": onlyCurrent,
      "@extra": extra,
    };
  }
  
  GetNetworkStatistics copyWith({
    bool? onlyCurrent,
  }) => GetNetworkStatistics(
    onlyCurrent: onlyCurrent ?? this.onlyCurrent,
  );

  static const CONSTRUCTOR = 'getNetworkStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
