part of '../tdapi.dart';

class DeleteCommands extends TdFunction {

  /// Deletes commands supported by the bot for the given user scope and language; for bots only
  const DeleteCommands({
    this.scope,
    required this.languageCode,
  });
  
  /// [scope] The scope to which the commands are relevant; pass null to delete commands in the default bot command scope
  final BotCommandScope? scope;

  /// [languageCode] A two-letter ISO 639-1 country code or an empty string
  final String languageCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope?.toJson(),
      "language_code": languageCode,
      "@extra": extra,
    };
  }
  
  DeleteCommands copyWith({
    BotCommandScope? scope,
    String? languageCode,
  }) => DeleteCommands(
    scope: scope ?? this.scope,
    languageCode: languageCode ?? this.languageCode,
  );

  static const CONSTRUCTOR = 'deleteCommands';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
