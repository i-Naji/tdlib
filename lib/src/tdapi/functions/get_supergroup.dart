part of '../tdapi.dart';

class GetSupergroup extends TdFunction {

  /// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot
  const GetSupergroup({
    required this.supergroupId,
  });
  
  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "@extra": extra,
    };
  }
  
  GetSupergroup copyWith({
    int? supergroupId,
  }) => GetSupergroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const CONSTRUCTOR = 'getSupergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
