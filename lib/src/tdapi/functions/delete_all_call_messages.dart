part of '../tdapi.dart';

class DeleteAllCallMessages extends TdFunction {

  /// Deletes all call messages
  const DeleteAllCallMessages({
    required this.revoke,
  });
  
  /// [revoke] Pass true to delete the messages for all users
  final bool revoke;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "revoke": revoke,
      "@extra": extra,
    };
  }
  
  DeleteAllCallMessages copyWith({
    bool? revoke,
  }) => DeleteAllCallMessages(
    revoke: revoke ?? this.revoke,
  );

  static const CONSTRUCTOR = 'deleteAllCallMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
