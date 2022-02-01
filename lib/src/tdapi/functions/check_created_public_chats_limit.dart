part of '../tdapi.dart';

class CheckCreatedPublicChatsLimit extends TdFunction {

  /// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached
  const CheckCreatedPublicChatsLimit({
    required this.type,
  });
  
  /// [type] Type of the public chats, for which to check the limit
  final PublicChatType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  CheckCreatedPublicChatsLimit copyWith({
    PublicChatType? type,
  }) => CheckCreatedPublicChatsLimit(
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'checkCreatedPublicChatsLimit';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
