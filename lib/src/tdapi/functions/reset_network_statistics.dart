part of '../tdapi.dart';

class ResetNetworkStatistics extends TdFunction {

  /// Resets all network data usage statistics to zero. Can be called before authorization
  const ResetNetworkStatistics();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResetNetworkStatistics copyWith() => const ResetNetworkStatistics();

  static const CONSTRUCTOR = 'resetNetworkStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
