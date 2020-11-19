part of '../tdapi.dart';

class GetBasicGroup extends TdFunction {
  /// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot
  GetBasicGroup({this.basicGroupId});

  /// [basicGroupId] Basic group identifier
  int basicGroupId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetBasicGroup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
