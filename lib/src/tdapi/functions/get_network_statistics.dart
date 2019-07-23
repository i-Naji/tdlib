part of '../tdapi.dart';

class GetNetworkStatistics extends TdFunction {
  bool onlyCurrent;
  dynamic extra;

  /// Returns network data usage statistics. Can be called before authorization.
  ///[onlyCurrent] If true, returns only data for the current library launch
  GetNetworkStatistics({this.onlyCurrent});

  /// Parse from a json
  GetNetworkStatistics.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "only_current": this.onlyCurrent,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getNetworkStatistics";

  @override
  String getConstructor() => CONSTRUCTOR;
}
