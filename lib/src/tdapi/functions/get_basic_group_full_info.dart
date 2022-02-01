part of '../tdapi.dart';

class GetBasicGroupFullInfo extends TdFunction {

  /// Returns full information about a basic group by its identifier
  const GetBasicGroupFullInfo({
    required this.basicGroupId,
  });
  
  /// [basicGroupId] Basic group identifier
  final int basicGroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
      "@extra": extra,
    };
  }
  
  GetBasicGroupFullInfo copyWith({
    int? basicGroupId,
  }) => GetBasicGroupFullInfo(
    basicGroupId: basicGroupId ?? this.basicGroupId,
  );

  static const CONSTRUCTOR = 'getBasicGroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
