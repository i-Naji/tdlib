part of '../tdapi.dart';

class GetRecentInlineBots extends TdFunction {
  /// Returns up to 20 recently used inline bots in the order of their last usage
  GetRecentInlineBots();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetRecentInlineBots.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRecentInlineBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}
