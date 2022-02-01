part of '../tdapi.dart';

class GetCreatedPublicChats extends TdFunction {

  /// Returns a list of public chats of the specified type, owned by the user
  const GetCreatedPublicChats({
    required this.type,
  });
  
  /// [type] Type of the public chats to return
  final PublicChatType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  GetCreatedPublicChats copyWith({
    PublicChatType? type,
  }) => GetCreatedPublicChats(
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'getCreatedPublicChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
