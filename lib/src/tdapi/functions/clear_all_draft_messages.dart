part of '../tdapi.dart';

class ClearAllDraftMessages extends TdFunction {

  /// Clears draft messages in all chats
  const ClearAllDraftMessages({
    required this.excludeSecretChats,
  });
  
  /// [excludeSecretChats] If true, local draft messages in secret chats will not be cleared
  final bool excludeSecretChats;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "exclude_secret_chats": excludeSecretChats,
      "@extra": extra,
    };
  }
  
  ClearAllDraftMessages copyWith({
    bool? excludeSecretChats,
  }) => ClearAllDraftMessages(
    excludeSecretChats: excludeSecretChats ?? this.excludeSecretChats,
  );

  static const CONSTRUCTOR = 'clearAllDraftMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
