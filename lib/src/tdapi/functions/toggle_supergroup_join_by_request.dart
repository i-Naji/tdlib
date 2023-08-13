part of '../tdapi.dart';

class ToggleSupergroupJoinByRequest extends TdFunction {
  /// Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators; requires can_restrict_members administrator right
  const ToggleSupergroupJoinByRequest({
    required this.supergroupId,
    required this.joinByRequest,
  });

  /// [supergroupId] Identifier of the channel
  final int supergroupId;

  /// [joinByRequest] New value of join_by_request
  final bool joinByRequest;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "join_by_request": joinByRequest,
      "@extra": extra,
    };
  }

  ToggleSupergroupJoinByRequest copyWith({
    int? supergroupId,
    bool? joinByRequest,
  }) =>
      ToggleSupergroupJoinByRequest(
        supergroupId: supergroupId ?? this.supergroupId,
        joinByRequest: joinByRequest ?? this.joinByRequest,
      );

  static const CONSTRUCTOR = 'toggleSupergroupJoinByRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}
