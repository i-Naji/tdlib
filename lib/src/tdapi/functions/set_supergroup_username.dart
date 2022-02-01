part of '../tdapi.dart';

class SetSupergroupUsername extends TdFunction {

  /// Changes the username of a supergroup or channel, requires owner privileges in the supergroup or channel
  const SetSupergroupUsername({
    required this.supergroupId,
    required this.username,
  });
  
  /// [supergroupId] Identifier of the supergroup or channel 
  final int supergroupId;

  /// [username] New value of the username. Use an empty string to remove the username
  final String username;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "username": username,
      "@extra": extra,
    };
  }
  
  SetSupergroupUsername copyWith({
    int? supergroupId,
    String? username,
  }) => SetSupergroupUsername(
    supergroupId: supergroupId ?? this.supergroupId,
    username: username ?? this.username,
  );

  static const CONSTRUCTOR = 'setSupergroupUsername';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
