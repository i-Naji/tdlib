part of '../tdapi.dart';

class InternalLinkType extends TdObject {

  /// Describes an internal https://t.me or tg: link, which must be processed by the app in a special way
  const InternalLinkType();
  
  /// a InternalLinkType return type can be :
  /// * [InternalLinkTypeActiveSessions]
  /// * [InternalLinkTypeAuthenticationCode]
  /// * [InternalLinkTypeBackground]
  /// * [InternalLinkTypeBotStart]
  /// * [InternalLinkTypeBotStartInGroup]
  /// * [InternalLinkTypeChangePhoneNumber]
  /// * [InternalLinkTypeChatInvite]
  /// * [InternalLinkTypeFilterSettings]
  /// * [InternalLinkTypeGame]
  /// * [InternalLinkTypeLanguagePack]
  /// * [InternalLinkTypeMessage]
  /// * [InternalLinkTypeMessageDraft]
  /// * [InternalLinkTypePassportDataRequest]
  /// * [InternalLinkTypePhoneNumberConfirmation]
  /// * [InternalLinkTypeProxy]
  /// * [InternalLinkTypePublicChat]
  /// * [InternalLinkTypeQrCodeAuthentication]
  /// * [InternalLinkTypeSettings]
  /// * [InternalLinkTypeStickerSet]
  /// * [InternalLinkTypeTheme]
  /// * [InternalLinkTypeThemeSettings]
  /// * [InternalLinkTypeUnknownDeepLink]
  /// * [InternalLinkTypeUnsupportedProxy]
  /// * [InternalLinkTypeVideoChat]
  factory InternalLinkType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InternalLinkTypeActiveSessions.CONSTRUCTOR:
        return InternalLinkTypeActiveSessions.fromJson(json);
      case InternalLinkTypeAuthenticationCode.CONSTRUCTOR:
        return InternalLinkTypeAuthenticationCode.fromJson(json);
      case InternalLinkTypeBackground.CONSTRUCTOR:
        return InternalLinkTypeBackground.fromJson(json);
      case InternalLinkTypeBotStart.CONSTRUCTOR:
        return InternalLinkTypeBotStart.fromJson(json);
      case InternalLinkTypeBotStartInGroup.CONSTRUCTOR:
        return InternalLinkTypeBotStartInGroup.fromJson(json);
      case InternalLinkTypeChangePhoneNumber.CONSTRUCTOR:
        return InternalLinkTypeChangePhoneNumber.fromJson(json);
      case InternalLinkTypeChatInvite.CONSTRUCTOR:
        return InternalLinkTypeChatInvite.fromJson(json);
      case InternalLinkTypeFilterSettings.CONSTRUCTOR:
        return InternalLinkTypeFilterSettings.fromJson(json);
      case InternalLinkTypeGame.CONSTRUCTOR:
        return InternalLinkTypeGame.fromJson(json);
      case InternalLinkTypeLanguagePack.CONSTRUCTOR:
        return InternalLinkTypeLanguagePack.fromJson(json);
      case InternalLinkTypeMessage.CONSTRUCTOR:
        return InternalLinkTypeMessage.fromJson(json);
      case InternalLinkTypeMessageDraft.CONSTRUCTOR:
        return InternalLinkTypeMessageDraft.fromJson(json);
      case InternalLinkTypePassportDataRequest.CONSTRUCTOR:
        return InternalLinkTypePassportDataRequest.fromJson(json);
      case InternalLinkTypePhoneNumberConfirmation.CONSTRUCTOR:
        return InternalLinkTypePhoneNumberConfirmation.fromJson(json);
      case InternalLinkTypeProxy.CONSTRUCTOR:
        return InternalLinkTypeProxy.fromJson(json);
      case InternalLinkTypePublicChat.CONSTRUCTOR:
        return InternalLinkTypePublicChat.fromJson(json);
      case InternalLinkTypeQrCodeAuthentication.CONSTRUCTOR:
        return InternalLinkTypeQrCodeAuthentication.fromJson(json);
      case InternalLinkTypeSettings.CONSTRUCTOR:
        return InternalLinkTypeSettings.fromJson(json);
      case InternalLinkTypeStickerSet.CONSTRUCTOR:
        return InternalLinkTypeStickerSet.fromJson(json);
      case InternalLinkTypeTheme.CONSTRUCTOR:
        return InternalLinkTypeTheme.fromJson(json);
      case InternalLinkTypeThemeSettings.CONSTRUCTOR:
        return InternalLinkTypeThemeSettings.fromJson(json);
      case InternalLinkTypeUnknownDeepLink.CONSTRUCTOR:
        return InternalLinkTypeUnknownDeepLink.fromJson(json);
      case InternalLinkTypeUnsupportedProxy.CONSTRUCTOR:
        return InternalLinkTypeUnsupportedProxy.fromJson(json);
      case InternalLinkTypeVideoChat.CONSTRUCTOR:
        return InternalLinkTypeVideoChat.fromJson(json);
      default:
        return const InternalLinkType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InternalLinkType copyWith() => const InternalLinkType();

  static const CONSTRUCTOR = 'internalLinkType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeActiveSessions extends InternalLinkType {

  /// The link is a link to the active sessions section of the app. Use getActiveSessions to handle the link
  const InternalLinkTypeActiveSessions({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeActiveSessions.fromJson(Map<String, dynamic> json) => InternalLinkTypeActiveSessions(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InternalLinkTypeActiveSessions copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeActiveSessions(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeActiveSessions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeAuthenticationCode extends InternalLinkType {

  /// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode
  const InternalLinkTypeAuthenticationCode({
    required this.code,
    this.extra,
    this.clientId,
  });
  
  /// [code] The authentication code
  final String code;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeAuthenticationCode.fromJson(Map<String, dynamic> json) => InternalLinkTypeAuthenticationCode(
    code: json['code'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
    };
  }
  
  @override
  InternalLinkTypeAuthenticationCode copyWith({
    String? code,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeAuthenticationCode(
    code: code ?? this.code,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeAuthenticationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeBackground extends InternalLinkType {

  /// The link is a link to a background. Call searchBackground with the given background name to process the link
  const InternalLinkTypeBackground({
    required this.backgroundName,
    this.extra,
    this.clientId,
  });
  
  /// [backgroundName] Name of the background
  final String backgroundName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeBackground.fromJson(Map<String, dynamic> json) => InternalLinkTypeBackground(
    backgroundName: json['background_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background_name": backgroundName,
    };
  }
  
  @override
  InternalLinkTypeBackground copyWith({
    String? backgroundName,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeBackground(
    backgroundName: backgroundName ?? this.backgroundName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeBotStart extends InternalLinkType {

  /// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot,. and then call sendBotStartMessage with the given start parameter after the button is pressed
  const InternalLinkTypeBotStart({
    required this.botUsername,
    required this.startParameter,
    this.extra,
    this.clientId,
  });
  
  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeBotStart.fromJson(Map<String, dynamic> json) => InternalLinkTypeBotStart(
    botUsername: json['bot_username'],
    startParameter: json['start_parameter'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "start_parameter": startParameter,
    };
  }
  
  @override
  InternalLinkTypeBotStart copyWith({
    String? botUsername,
    String? startParameter,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeBotStart(
    botUsername: botUsername ?? this.botUsername,
    startParameter: startParameter ?? this.startParameter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeBotStart';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeBotStartInGroup extends InternalLinkType {

  /// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups,. ask the current user to select a group to add the bot to, and then call sendBotStartMessage with the given start parameter and the chosen group chat. Bots can be added to a public group only by administrators of the group
  const InternalLinkTypeBotStartInGroup({
    required this.botUsername,
    required this.startParameter,
    this.extra,
    this.clientId,
  });
  
  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeBotStartInGroup.fromJson(Map<String, dynamic> json) => InternalLinkTypeBotStartInGroup(
    botUsername: json['bot_username'],
    startParameter: json['start_parameter'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "start_parameter": startParameter,
    };
  }
  
  @override
  InternalLinkTypeBotStartInGroup copyWith({
    String? botUsername,
    String? startParameter,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeBotStartInGroup(
    botUsername: botUsername ?? this.botUsername,
    startParameter: startParameter ?? this.startParameter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeBotStartInGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeChangePhoneNumber extends InternalLinkType {

  /// The link is a link to the change phone number section of the app
  const InternalLinkTypeChangePhoneNumber({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeChangePhoneNumber.fromJson(Map<String, dynamic> json) => InternalLinkTypeChangePhoneNumber(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InternalLinkTypeChangePhoneNumber copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeChangePhoneNumber(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeChangePhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeChatInvite extends InternalLinkType {

  /// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link
  const InternalLinkTypeChatInvite({
    required this.inviteLink,
    this.extra,
    this.clientId,
  });
  
  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeChatInvite.fromJson(Map<String, dynamic> json) => InternalLinkTypeChatInvite(
    inviteLink: json['invite_link'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
    };
  }
  
  @override
  InternalLinkTypeChatInvite copyWith({
    String? inviteLink,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeChatInvite(
    inviteLink: inviteLink ?? this.inviteLink,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeChatInvite';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeFilterSettings extends InternalLinkType {

  /// The link is a link to the filter settings section of the app
  const InternalLinkTypeFilterSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeFilterSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeFilterSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InternalLinkTypeFilterSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeFilterSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeFilterSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeGame extends InternalLinkType {

  /// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
  const InternalLinkTypeGame({
    required this.botUsername,
    required this.gameShortName,
    this.extra,
    this.clientId,
  });
  
  /// [botUsername] Username of the bot that owns the game
  final String botUsername;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeGame.fromJson(Map<String, dynamic> json) => InternalLinkTypeGame(
    botUsername: json['bot_username'],
    gameShortName: json['game_short_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "game_short_name": gameShortName,
    };
  }
  
  @override
  InternalLinkTypeGame copyWith({
    String? botUsername,
    String? gameShortName,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeGame(
    botUsername: botUsername ?? this.botUsername,
    gameShortName: gameShortName ?? this.gameShortName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeLanguagePack extends InternalLinkType {

  /// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link
  const InternalLinkTypeLanguagePack({
    required this.languagePackId,
    this.extra,
    this.clientId,
  });
  
  /// [languagePackId] Language pack identifier
  final String languagePackId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeLanguagePack.fromJson(Map<String, dynamic> json) => InternalLinkTypeLanguagePack(
    languagePackId: json['language_pack_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": languagePackId,
    };
  }
  
  @override
  InternalLinkTypeLanguagePack copyWith({
    String? languagePackId,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeLanguagePack(
    languagePackId: languagePackId ?? this.languagePackId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeLanguagePack';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeMessage extends InternalLinkType {

  /// The link is a link to a Telegram message. Call getMessageLinkInfo with the given URL to process the link
  const InternalLinkTypeMessage({
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// [url] URL to be passed to getMessageLinkInfo
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeMessage.fromJson(Map<String, dynamic> json) => InternalLinkTypeMessage(
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }
  
  @override
  InternalLinkTypeMessage copyWith({
    String? url,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeMessage(
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeMessageDraft extends InternalLinkType {

  /// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
  const InternalLinkTypeMessageDraft({
    required this.text,
    required this.containsLink,
    this.extra,
    this.clientId,
  });
  
  /// [text] Message draft text
  final FormattedText text;

  /// [containsLink] True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected
  final bool containsLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeMessageDraft.fromJson(Map<String, dynamic> json) => InternalLinkTypeMessageDraft(
    text: FormattedText.fromJson(json['text']),
    containsLink: json['contains_link'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "contains_link": containsLink,
    };
  }
  
  @override
  InternalLinkTypeMessageDraft copyWith({
    FormattedText? text,
    bool? containsLink,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeMessageDraft(
    text: text ?? this.text,
    containsLink: containsLink ?? this.containsLink,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeMessageDraft';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypePassportDataRequest extends InternalLinkType {

  /// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the app, otherwise ignore it
  const InternalLinkTypePassportDataRequest({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
    required this.callbackUrl,
    this.extra,
    this.clientId,
  });
  
  /// [botUserId] User identifier of the service's bot
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service 
  final String scope;

  /// [publicKey] Service's public key 
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;

  /// [callbackUrl] An HTTP URL to open once the request is finished or canceled with the parameter tg_passport=success or tg_passport=cancel respectively. If empty, then the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel needs to be opened instead
  final String callbackUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypePassportDataRequest.fromJson(Map<String, dynamic> json) => InternalLinkTypePassportDataRequest(
    botUserId: json['bot_user_id'],
    scope: json['scope'],
    publicKey: json['public_key'],
    nonce: json['nonce'],
    callbackUrl: json['callback_url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "scope": scope,
      "public_key": publicKey,
      "nonce": nonce,
      "callback_url": callbackUrl,
    };
  }
  
  @override
  InternalLinkTypePassportDataRequest copyWith({
    int? botUserId,
    String? scope,
    String? publicKey,
    String? nonce,
    String? callbackUrl,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypePassportDataRequest(
    botUserId: botUserId ?? this.botUserId,
    scope: scope ?? this.scope,
    publicKey: publicKey ?? this.publicKey,
    nonce: nonce ?? this.nonce,
    callbackUrl: callbackUrl ?? this.callbackUrl,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypePassportDataRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {

  /// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link
  const InternalLinkTypePhoneNumberConfirmation({
    required this.hash,
    required this.phoneNumber,
    this.extra,
    this.clientId,
  });
  
  /// [hash] Hash value from the link
  final String hash;

  /// [phoneNumber] Phone number value from the link
  final String phoneNumber;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypePhoneNumberConfirmation.fromJson(Map<String, dynamic> json) => InternalLinkTypePhoneNumberConfirmation(
    hash: json['hash'],
    phoneNumber: json['phone_number'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "hash": hash,
      "phone_number": phoneNumber,
    };
  }
  
  @override
  InternalLinkTypePhoneNumberConfirmation copyWith({
    String? hash,
    String? phoneNumber,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypePhoneNumberConfirmation(
    hash: hash ?? this.hash,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypePhoneNumberConfirmation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeProxy extends InternalLinkType {

  /// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
  const InternalLinkTypeProxy({
    required this.server,
    required this.port,
    required this.type,
    this.extra,
    this.clientId,
  });
  
  /// [server] Proxy server IP address
  final String server;

  /// [port] Proxy server port 
  final int port;

  /// [type] Type of the proxy
  final ProxyType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeProxy.fromJson(Map<String, dynamic> json) => InternalLinkTypeProxy(
    server: json['server'],
    port: json['port'],
    type: ProxyType.fromJson(json['type']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "server": server,
      "port": port,
      "type": type.toJson(),
    };
  }
  
  @override
  InternalLinkTypeProxy copyWith({
    String? server,
    int? port,
    ProxyType? type,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeProxy(
    server: server ?? this.server,
    port: port ?? this.port,
    type: type ?? this.type,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypePublicChat extends InternalLinkType {

  /// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link
  const InternalLinkTypePublicChat({
    required this.chatUsername,
    this.extra,
    this.clientId,
  });
  
  /// [chatUsername] Username of the chat
  final String chatUsername;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypePublicChat.fromJson(Map<String, dynamic> json) => InternalLinkTypePublicChat(
    chatUsername: json['chat_username'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_username": chatUsername,
    };
  }
  
  @override
  InternalLinkTypePublicChat copyWith({
    String? chatUsername,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypePublicChat(
    chatUsername: chatUsername ?? this.chatUsername,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypePublicChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeQrCodeAuthentication extends InternalLinkType {

  /// The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to. "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings
  const InternalLinkTypeQrCodeAuthentication({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeQrCodeAuthentication.fromJson(Map<String, dynamic> json) => InternalLinkTypeQrCodeAuthentication(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InternalLinkTypeQrCodeAuthentication copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeQrCodeAuthentication(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeQrCodeAuthentication';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeSettings extends InternalLinkType {

  /// The link is a link to app settings
  const InternalLinkTypeSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InternalLinkTypeSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeStickerSet extends InternalLinkType {

  /// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set
  const InternalLinkTypeStickerSet({
    required this.stickerSetName,
    this.extra,
    this.clientId,
  });
  
  /// [stickerSetName] Name of the sticker set
  final String stickerSetName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeStickerSet.fromJson(Map<String, dynamic> json) => InternalLinkTypeStickerSet(
    stickerSetName: json['sticker_set_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_name": stickerSetName,
    };
  }
  
  @override
  InternalLinkTypeStickerSet copyWith({
    String? stickerSetName,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeStickerSet(
    stickerSetName: stickerSetName ?? this.stickerSetName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeTheme extends InternalLinkType {

  /// The link is a link to a theme. TDLib has no theme support yet
  const InternalLinkTypeTheme({
    required this.themeName,
    this.extra,
    this.clientId,
  });
  
  /// [themeName] Name of the theme
  final String themeName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeTheme.fromJson(Map<String, dynamic> json) => InternalLinkTypeTheme(
    themeName: json['theme_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "theme_name": themeName,
    };
  }
  
  @override
  InternalLinkTypeTheme copyWith({
    String? themeName,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeTheme(
    themeName: themeName ?? this.themeName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeThemeSettings extends InternalLinkType {

  /// The link is a link to the theme settings section of the app
  const InternalLinkTypeThemeSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeThemeSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeThemeSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InternalLinkTypeThemeSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeThemeSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeThemeSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeUnknownDeepLink extends InternalLinkType {

  /// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
  const InternalLinkTypeUnknownDeepLink({
    required this.link,
    this.extra,
    this.clientId,
  });
  
  /// [link] Link to be passed to getDeepLinkInfo
  final String link;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeUnknownDeepLink.fromJson(Map<String, dynamic> json) => InternalLinkTypeUnknownDeepLink(
    link: json['link'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
    };
  }
  
  @override
  InternalLinkTypeUnknownDeepLink copyWith({
    String? link,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeUnknownDeepLink(
    link: link ?? this.link,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeUnknownDeepLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeUnsupportedProxy extends InternalLinkType {

  /// The link is a link to an unsupported proxy. An alert can be shown to the user
  const InternalLinkTypeUnsupportedProxy({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeUnsupportedProxy.fromJson(Map<String, dynamic> json) => InternalLinkTypeUnsupportedProxy(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InternalLinkTypeUnsupportedProxy copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeUnsupportedProxy(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeUnsupportedProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InternalLinkTypeVideoChat extends InternalLinkType {

  /// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGoupCall with the given invite hash to process the link
  const InternalLinkTypeVideoChat({
    required this.chatUsername,
    required this.inviteHash,
    required this.isLiveStream,
    this.extra,
    this.clientId,
  });
  
  /// [chatUsername] Username of the chat with the video chat
  final String chatUsername;

  /// [inviteHash] If non-empty, invite hash to be used to join the video chat without being muted by administrators
  final String inviteHash;

  /// [isLiveStream] True, if the video chat is expected to be a live stream in a channel or a broadcast group
  final bool isLiveStream;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeVideoChat.fromJson(Map<String, dynamic> json) => InternalLinkTypeVideoChat(
    chatUsername: json['chat_username'],
    inviteHash: json['invite_hash'],
    isLiveStream: json['is_live_stream'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_username": chatUsername,
      "invite_hash": inviteHash,
      "is_live_stream": isLiveStream,
    };
  }
  
  @override
  InternalLinkTypeVideoChat copyWith({
    String? chatUsername,
    String? inviteHash,
    bool? isLiveStream,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeVideoChat(
    chatUsername: chatUsername ?? this.chatUsername,
    inviteHash: inviteHash ?? this.inviteHash,
    isLiveStream: isLiveStream ?? this.isLiveStream,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'internalLinkTypeVideoChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
