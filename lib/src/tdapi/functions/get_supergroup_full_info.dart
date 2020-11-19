part of '../tdapi.dart';

class GetSupergroupFullInfo extends TdFunction {
  /// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute
  GetSupergroupFullInfo({this.supergroupId});

  /// [supergroupId] Supergroup or channel identifier
  int supergroupId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetSupergroupFullInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSupergroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
