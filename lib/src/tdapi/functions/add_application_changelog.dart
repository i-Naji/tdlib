part of '../tdapi.dart';

class AddApplicationChangelog extends TdFunction {
  /// Adds server-provided application changelog as messages to the chat 777000 (Telegram) or as a stories; for official applications only. Returns a 404 error if nothing changed
  const AddApplicationChangelog({
    required this.previousApplicationVersion,
  });

  /// [previousApplicationVersion] The previous application version
  final String previousApplicationVersion;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "previous_application_version": previousApplicationVersion,
      "@extra": extra,
    };
  }

  AddApplicationChangelog copyWith({
    String? previousApplicationVersion,
  }) =>
      AddApplicationChangelog(
        previousApplicationVersion:
            previousApplicationVersion ?? this.previousApplicationVersion,
      );

  static const CONSTRUCTOR = 'addApplicationChangelog';

  @override
  String getConstructor() => CONSTRUCTOR;
}
