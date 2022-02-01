part of '../tdapi.dart';

class CreatePrivateChat extends TdFunction {

  /// Returns an existing chat corresponding to a given user
  const CreatePrivateChat({
    required this.userId,
    required this.force,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [force] If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "force": force,
      "@extra": extra,
    };
  }
  
  CreatePrivateChat copyWith({
    int? userId,
    bool? force,
  }) => CreatePrivateChat(
    userId: userId ?? this.userId,
    force: force ?? this.force,
  );

  static const CONSTRUCTOR = 'createPrivateChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
