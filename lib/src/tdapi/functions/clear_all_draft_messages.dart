part of '../tdapi.dart';

class ClearAllDraftMessages extends TdFunction {
  /// Clears message drafts in all chats
  const ClearAllDraftMessages({
    required this.excludeSecretChats,
  });

  /// [excludeSecretChats] Pass true to keep local message drafts in secret chats
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
  }) =>
      ClearAllDraftMessages(
        excludeSecretChats: excludeSecretChats ?? this.excludeSecretChats,
      );

  static const CONSTRUCTOR = 'clearAllDraftMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
