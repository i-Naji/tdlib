part of '../tdapi.dart';

class LoginUrlInfo extends TdObject {
  /// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl
  const LoginUrlInfo();

  /// a LoginUrlInfo return type can be :
  /// * [LoginUrlInfoOpen]
  /// * [LoginUrlInfoRequestConfirmation]
  factory LoginUrlInfo.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case LoginUrlInfoOpen.CONSTRUCTOR:
        return LoginUrlInfoOpen.fromJson(json);
      case LoginUrlInfoRequestConfirmation.CONSTRUCTOR:
        return LoginUrlInfoRequestConfirmation.fromJson(json);
      default:
        return const LoginUrlInfo();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  LoginUrlInfo copyWith() => const LoginUrlInfo();

  static const CONSTRUCTOR = 'loginUrlInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LoginUrlInfoOpen extends LoginUrlInfo {
  /// An HTTP URL needs to be open
  const LoginUrlInfoOpen({
    required this.url,
    required this.skipConfirmation,
    this.extra,
    this.clientId,
  });

  /// [url] The URL to open
  final String url;

  /// [skipConfirmation] True, if there is no need to show an ordinary open URL confirmation
  final bool skipConfirmation;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory LoginUrlInfoOpen.fromJson(Map<String, dynamic> json) =>
      LoginUrlInfoOpen(
        url: json['url'],
        skipConfirmation: json['skip_confirmation'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "skip_confirmation": skipConfirmation,
    };
  }

  @override
  LoginUrlInfoOpen copyWith({
    String? url,
    bool? skipConfirmation,
    dynamic extra,
    int? clientId,
  }) =>
      LoginUrlInfoOpen(
        url: url ?? this.url,
        skipConfirmation: skipConfirmation ?? this.skipConfirmation,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'loginUrlInfoOpen';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  /// An authorization confirmation dialog needs to be shown to the user
  const LoginUrlInfoRequestConfirmation({
    required this.url,
    required this.domain,
    required this.botUserId,
    required this.requestWriteAccess,
    this.extra,
    this.clientId,
  });

  /// [url] An HTTP URL to be opened
  final String url;

  /// [domain] A domain of the URL
  final String domain;

  /// [botUserId] User identifier of a bot linked with the website
  final int botUserId;

  /// [requestWriteAccess] True, if the user must be asked for the permission to the bot to send them messages
  final bool requestWriteAccess;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory LoginUrlInfoRequestConfirmation.fromJson(Map<String, dynamic> json) =>
      LoginUrlInfoRequestConfirmation(
        url: json['url'],
        domain: json['domain'],
        botUserId: json['bot_user_id'],
        requestWriteAccess: json['request_write_access'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "domain": domain,
      "bot_user_id": botUserId,
      "request_write_access": requestWriteAccess,
    };
  }

  @override
  LoginUrlInfoRequestConfirmation copyWith({
    String? url,
    String? domain,
    int? botUserId,
    bool? requestWriteAccess,
    dynamic extra,
    int? clientId,
  }) =>
      LoginUrlInfoRequestConfirmation(
        url: url ?? this.url,
        domain: domain ?? this.domain,
        botUserId: botUserId ?? this.botUserId,
        requestWriteAccess: requestWriteAccess ?? this.requestWriteAccess,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'loginUrlInfoRequestConfirmation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
