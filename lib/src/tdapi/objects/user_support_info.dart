part of '../tdapi.dart';

class UserSupportInfo extends TdObject {
  /// Contains custom information about the user
  const UserSupportInfo({
    required this.message,
    required this.author,
    required this.date,
    this.extra,
    this.clientId,
  });

  /// [message] Information message
  final FormattedText message;

  /// [author] Information author
  final String author;

  /// [date] Information change date
  final int date;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory UserSupportInfo.fromJson(Map<String, dynamic> json) =>
      UserSupportInfo(
        message: FormattedText.fromJson(json['message']),
        author: json['author'],
        date: json['date'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "author": author,
      "date": date,
    };
  }

  UserSupportInfo copyWith({
    FormattedText? message,
    String? author,
    int? date,
    dynamic extra,
    int? clientId,
  }) =>
      UserSupportInfo(
        message: message ?? this.message,
        author: author ?? this.author,
        date: date ?? this.date,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'userSupportInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
