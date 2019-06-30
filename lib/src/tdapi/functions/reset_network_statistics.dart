part of '../tdapi.dart';

class ResetNetworkStatistics extends TLFunction {
  dynamic extra;

  /// Resets all network data usage statistics to zero. Can be called before authorization.
  ///
  ResetNetworkStatistics();

  /// Parse from a json
  ResetNetworkStatistics.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'resetNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
