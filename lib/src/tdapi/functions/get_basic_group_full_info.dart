part of '../tdapi.dart';

class GetBasicGroupFullInfo extends TdFunction {
  int basicGroupId;
  dynamic extra;

  /// Returns full information about a basic group by its identifier. 
  /// [basicGroupId] Basic group identifier
  GetBasicGroupFullInfo({this.basicGroupId});

  /// Parse from a json
  GetBasicGroupFullInfo.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBasicGroupFullInfo';
}