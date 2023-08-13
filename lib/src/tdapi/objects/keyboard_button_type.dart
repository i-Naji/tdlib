part of '../tdapi.dart';

class KeyboardButtonType extends TdObject {
  /// Describes a keyboard button type
  const KeyboardButtonType();

  /// a KeyboardButtonType return type can be :
  /// * [KeyboardButtonTypeText]
  /// * [KeyboardButtonTypeRequestPhoneNumber]
  /// * [KeyboardButtonTypeRequestLocation]
  /// * [KeyboardButtonTypeRequestPoll]
  /// * [KeyboardButtonTypeRequestUser]
  /// * [KeyboardButtonTypeRequestChat]
  /// * [KeyboardButtonTypeWebApp]
  factory KeyboardButtonType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case KeyboardButtonTypeText.CONSTRUCTOR:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.CONSTRUCTOR:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPoll.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
      case KeyboardButtonTypeRequestUser.CONSTRUCTOR:
        return KeyboardButtonTypeRequestUser.fromJson(json);
      case KeyboardButtonTypeRequestChat.CONSTRUCTOR:
        return KeyboardButtonTypeRequestChat.fromJson(json);
      case KeyboardButtonTypeWebApp.CONSTRUCTOR:
        return KeyboardButtonTypeWebApp.fromJson(json);
      default:
        return const KeyboardButtonType();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  KeyboardButtonType copyWith() => const KeyboardButtonType();

  static const CONSTRUCTOR = 'keyboardButtonType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeText extends KeyboardButtonType {
  /// A simple button, with text that must be sent when the button is pressed
  const KeyboardButtonTypeText();

  /// Parse from a json
  factory KeyboardButtonTypeText.fromJson(Map<String, dynamic> json) =>
      const KeyboardButtonTypeText();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  KeyboardButtonTypeText copyWith() => const KeyboardButtonTypeText();

  static const CONSTRUCTOR = 'keyboardButtonTypeText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  /// A button that sends the user's phone number when pressed; available only in private chats
  const KeyboardButtonTypeRequestPhoneNumber();

  /// Parse from a json
  factory KeyboardButtonTypeRequestPhoneNumber.fromJson(
          Map<String, dynamic> json) =>
      const KeyboardButtonTypeRequestPhoneNumber();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  KeyboardButtonTypeRequestPhoneNumber copyWith() =>
      const KeyboardButtonTypeRequestPhoneNumber();

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  /// A button that sends the user's location when pressed; available only in private chats
  const KeyboardButtonTypeRequestLocation();

  /// Parse from a json
  factory KeyboardButtonTypeRequestLocation.fromJson(
          Map<String, dynamic> json) =>
      const KeyboardButtonTypeRequestLocation();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  KeyboardButtonTypeRequestLocation copyWith() =>
      const KeyboardButtonTypeRequestLocation();

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  /// A button that allows the user to create and send a poll when pressed; available only in private chats
  const KeyboardButtonTypeRequestPoll({
    required this.forceRegular,
    required this.forceQuiz,
  });

  /// [forceRegular] If true, only regular polls must be allowed to create
  final bool forceRegular;

  /// [forceQuiz] If true, only polls in quiz mode must be allowed to create
  final bool forceQuiz;

  /// Parse from a json
  factory KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeRequestPoll(
        forceRegular: json['force_regular'],
        forceQuiz: json['force_quiz'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "force_regular": forceRegular,
      "force_quiz": forceQuiz,
    };
  }

  @override
  KeyboardButtonTypeRequestPoll copyWith({
    bool? forceRegular,
    bool? forceQuiz,
  }) =>
      KeyboardButtonTypeRequestPoll(
        forceRegular: forceRegular ?? this.forceRegular,
        forceQuiz: forceQuiz ?? this.forceQuiz,
      );

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestUser extends KeyboardButtonType {
  /// A button that requests a user to be shared by the current user; available only in private chats. Use the method shareUserWithBot to complete the request
  const KeyboardButtonTypeRequestUser({
    required this.id,
    required this.restrictUserIsBot,
    required this.userIsBot,
    required this.restrictUserIsPremium,
    required this.userIsPremium,
  });

  /// [id] Unique button identifier
  final int id;

  /// [restrictUserIsBot] True, if the shared user must or must not be a bot
  final bool restrictUserIsBot;

  /// [userIsBot] True, if the shared user must be a bot; otherwise, the shared user must no be a bot. Ignored if restrict_user_is_bot is false
  final bool userIsBot;

  /// [restrictUserIsPremium] True, if the shared user must or must not be a Telegram Premium user
  final bool restrictUserIsPremium;

  /// [userIsPremium] True, if the shared user must be a Telegram Premium user; otherwise, the shared user must no be a Telegram Premium user. Ignored if restrict_user_is_premium is false
  final bool userIsPremium;

  /// Parse from a json
  factory KeyboardButtonTypeRequestUser.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeRequestUser(
        id: json['id'],
        restrictUserIsBot: json['restrict_user_is_bot'],
        userIsBot: json['user_is_bot'],
        restrictUserIsPremium: json['restrict_user_is_premium'],
        userIsPremium: json['user_is_premium'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "restrict_user_is_bot": restrictUserIsBot,
      "user_is_bot": userIsBot,
      "restrict_user_is_premium": restrictUserIsPremium,
      "user_is_premium": userIsPremium,
    };
  }

  @override
  KeyboardButtonTypeRequestUser copyWith({
    int? id,
    bool? restrictUserIsBot,
    bool? userIsBot,
    bool? restrictUserIsPremium,
    bool? userIsPremium,
  }) =>
      KeyboardButtonTypeRequestUser(
        id: id ?? this.id,
        restrictUserIsBot: restrictUserIsBot ?? this.restrictUserIsBot,
        userIsBot: userIsBot ?? this.userIsBot,
        restrictUserIsPremium:
            restrictUserIsPremium ?? this.restrictUserIsPremium,
        userIsPremium: userIsPremium ?? this.userIsPremium,
      );

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestChat extends KeyboardButtonType {
  /// A button that requests a chat to be shared by the current user; available only in private chats. Use the method shareChatWithBot to complete the request
  const KeyboardButtonTypeRequestChat({
    required this.id,
    required this.chatIsChannel,
    required this.restrictChatIsForum,
    required this.chatIsForum,
    required this.restrictChatHasUsername,
    required this.chatHasUsername,
    required this.chatIsCreated,
    this.userAdministratorRights,
    this.botAdministratorRights,
    required this.botIsMember,
  });

  /// [id] Unique button identifier
  final int id;

  /// [chatIsChannel] True, if the chat must be a channel; otherwise, a basic group or a supergroup chat is shared
  final bool chatIsChannel;

  /// [restrictChatIsForum] True, if the chat must or must not be a forum supergroup
  final bool restrictChatIsForum;

  /// [chatIsForum] True, if the chat must be a forum supergroup; otherwise, the chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is false
  final bool chatIsForum;

  /// [restrictChatHasUsername] True, if the chat must or must not have a username
  final bool restrictChatHasUsername;

  /// [chatHasUsername] True, if the chat must have a username; otherwise, the chat must not have a username. Ignored if restrict_chat_has_username is false
  final bool chatHasUsername;

  /// [chatIsCreated] True, if the chat must be created by the current user
  final bool chatIsCreated;

  /// [userAdministratorRights] Expected user administrator rights in the chat; may be null if they aren't restricted
  final ChatAdministratorRights? userAdministratorRights;

  /// [botAdministratorRights] Expected bot administrator rights in the chat; may be null if they aren't restricted
  final ChatAdministratorRights? botAdministratorRights;

  /// [botIsMember] True, if the bot must be a member of the chat; for basic group and supergroup chats only
  final bool botIsMember;

  /// Parse from a json
  factory KeyboardButtonTypeRequestChat.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeRequestChat(
        id: json['id'],
        chatIsChannel: json['chat_is_channel'],
        restrictChatIsForum: json['restrict_chat_is_forum'],
        chatIsForum: json['chat_is_forum'],
        restrictChatHasUsername: json['restrict_chat_has_username'],
        chatHasUsername: json['chat_has_username'],
        chatIsCreated: json['chat_is_created'],
        userAdministratorRights: json['user_administrator_rights'] == null
            ? null
            : ChatAdministratorRights.fromJson(
                json['user_administrator_rights']),
        botAdministratorRights: json['bot_administrator_rights'] == null
            ? null
            : ChatAdministratorRights.fromJson(
                json['bot_administrator_rights']),
        botIsMember: json['bot_is_member'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "chat_is_channel": chatIsChannel,
      "restrict_chat_is_forum": restrictChatIsForum,
      "chat_is_forum": chatIsForum,
      "restrict_chat_has_username": restrictChatHasUsername,
      "chat_has_username": chatHasUsername,
      "chat_is_created": chatIsCreated,
      "user_administrator_rights": userAdministratorRights?.toJson(),
      "bot_administrator_rights": botAdministratorRights?.toJson(),
      "bot_is_member": botIsMember,
    };
  }

  @override
  KeyboardButtonTypeRequestChat copyWith({
    int? id,
    bool? chatIsChannel,
    bool? restrictChatIsForum,
    bool? chatIsForum,
    bool? restrictChatHasUsername,
    bool? chatHasUsername,
    bool? chatIsCreated,
    ChatAdministratorRights? userAdministratorRights,
    ChatAdministratorRights? botAdministratorRights,
    bool? botIsMember,
  }) =>
      KeyboardButtonTypeRequestChat(
        id: id ?? this.id,
        chatIsChannel: chatIsChannel ?? this.chatIsChannel,
        restrictChatIsForum: restrictChatIsForum ?? this.restrictChatIsForum,
        chatIsForum: chatIsForum ?? this.chatIsForum,
        restrictChatHasUsername:
            restrictChatHasUsername ?? this.restrictChatHasUsername,
        chatHasUsername: chatHasUsername ?? this.chatHasUsername,
        chatIsCreated: chatIsCreated ?? this.chatIsCreated,
        userAdministratorRights:
            userAdministratorRights ?? this.userAdministratorRights,
        botAdministratorRights:
            botAdministratorRights ?? this.botAdministratorRights,
        botIsMember: botIsMember ?? this.botIsMember,
      );

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeWebApp extends KeyboardButtonType {
  /// A button that opens a Web App by calling getWebAppUrl
  const KeyboardButtonTypeWebApp({
    required this.url,
  });

  /// [url] An HTTP URL to pass to getWebAppUrl
  final String url;

  /// Parse from a json
  factory KeyboardButtonTypeWebApp.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeWebApp(
        url: json['url'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }

  @override
  KeyboardButtonTypeWebApp copyWith({
    String? url,
  }) =>
      KeyboardButtonTypeWebApp(
        url: url ?? this.url,
      );

  static const CONSTRUCTOR = 'keyboardButtonTypeWebApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
