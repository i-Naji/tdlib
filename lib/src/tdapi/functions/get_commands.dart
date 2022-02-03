part of '../tdapi.dart';

class GetCommands extends TdFunction {

  /// Returns the list of commands supported by the bot for the given user scope and language; for bots only
  const GetCommands({
    this.scope,
    required this.languageCode,
  });
  
  /// [scope] The scope to which the commands are relevant; pass null to get commands in the default bot command scope
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
  
  GetCommands copyWith({
    BotCommandScope? scope,
    String? languageCode,
  }) => GetCommands(
    scope: scope ?? this.scope,
    languageCode: languageCode ?? this.languageCode,
  );

  static const CONSTRUCTOR = 'getCommands';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
