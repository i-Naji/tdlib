part of '../tdapi.dart';

class GetRecentInlineBots extends TdFunction {

  /// Returns up to 20 recently used inline bots in the order of their last usage
  const GetRecentInlineBots();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetRecentInlineBots copyWith() => const GetRecentInlineBots();

  static const CONSTRUCTOR = 'getRecentInlineBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
