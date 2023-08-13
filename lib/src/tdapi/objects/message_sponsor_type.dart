part of '../tdapi.dart';

class MessageSponsorType extends TdObject {
  /// Describes type of a message sponsor
  const MessageSponsorType();

  /// a MessageSponsorType return type can be :
  /// * [MessageSponsorTypeBot]
  /// * [MessageSponsorTypePublicChannel]
  /// * [MessageSponsorTypePrivateChannel]
  /// * [MessageSponsorTypeWebsite]
  factory MessageSponsorType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSponsorTypeBot.CONSTRUCTOR:
        return MessageSponsorTypeBot.fromJson(json);
      case MessageSponsorTypePublicChannel.CONSTRUCTOR:
        return MessageSponsorTypePublicChannel.fromJson(json);
      case MessageSponsorTypePrivateChannel.CONSTRUCTOR:
        return MessageSponsorTypePrivateChannel.fromJson(json);
      case MessageSponsorTypeWebsite.CONSTRUCTOR:
        return MessageSponsorTypeWebsite.fromJson(json);
      default:
        return const MessageSponsorType();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  MessageSponsorType copyWith() => const MessageSponsorType();

  static const CONSTRUCTOR = 'messageSponsorType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSponsorTypeBot extends MessageSponsorType {
  /// The sponsor is a bot
  const MessageSponsorTypeBot({
    required this.botUserId,
    required this.link,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [link] An internal link to be opened when the sponsored message is clicked
  final InternalLinkType link;

  /// Parse from a json
  factory MessageSponsorTypeBot.fromJson(Map<String, dynamic> json) =>
      MessageSponsorTypeBot(
        botUserId: json['bot_user_id'],
        link: InternalLinkType.fromJson(json['link']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "link": link.toJson(),
    };
  }

  @override
  MessageSponsorTypeBot copyWith({
    int? botUserId,
    InternalLinkType? link,
  }) =>
      MessageSponsorTypeBot(
        botUserId: botUserId ?? this.botUserId,
        link: link ?? this.link,
      );

  static const CONSTRUCTOR = 'messageSponsorTypeBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSponsorTypePublicChannel extends MessageSponsorType {
  /// The sponsor is a public channel chat
  const MessageSponsorTypePublicChannel({
    required this.chatId,
    this.link,
  });

  /// [chatId] Sponsor chat identifier
  final int chatId;

  /// [link] An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead
  final InternalLinkType? link;

  /// Parse from a json
  factory MessageSponsorTypePublicChannel.fromJson(Map<String, dynamic> json) =>
      MessageSponsorTypePublicChannel(
        chatId: json['chat_id'],
        link: json['link'] == null
            ? null
            : InternalLinkType.fromJson(json['link']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "link": link?.toJson(),
    };
  }

  @override
  MessageSponsorTypePublicChannel copyWith({
    int? chatId,
    InternalLinkType? link,
  }) =>
      MessageSponsorTypePublicChannel(
        chatId: chatId ?? this.chatId,
        link: link ?? this.link,
      );

  static const CONSTRUCTOR = 'messageSponsorTypePublicChannel';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSponsorTypePrivateChannel extends MessageSponsorType {
  /// The sponsor is a private channel chat
  const MessageSponsorTypePrivateChannel({
    required this.title,
    required this.inviteLink,
  });

  /// [title] Title of the chat
  final String title;

  /// [inviteLink] Invite link for the channel
  final String inviteLink;

  /// Parse from a json
  factory MessageSponsorTypePrivateChannel.fromJson(
          Map<String, dynamic> json) =>
      MessageSponsorTypePrivateChannel(
        title: json['title'],
        inviteLink: json['invite_link'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "invite_link": inviteLink,
    };
  }

  @override
  MessageSponsorTypePrivateChannel copyWith({
    String? title,
    String? inviteLink,
  }) =>
      MessageSponsorTypePrivateChannel(
        title: title ?? this.title,
        inviteLink: inviteLink ?? this.inviteLink,
      );

  static const CONSTRUCTOR = 'messageSponsorTypePrivateChannel';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSponsorTypeWebsite extends MessageSponsorType {
  /// The sponsor is a website
  const MessageSponsorTypeWebsite({
    required this.url,
    required this.name,
  });

  /// [url] URL of the website
  final String url;

  /// [name] Name of the website
  final String name;

  /// Parse from a json
  factory MessageSponsorTypeWebsite.fromJson(Map<String, dynamic> json) =>
      MessageSponsorTypeWebsite(
        url: json['url'],
        name: json['name'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "name": name,
    };
  }

  @override
  MessageSponsorTypeWebsite copyWith({
    String? url,
    String? name,
  }) =>
      MessageSponsorTypeWebsite(
        url: url ?? this.url,
        name: name ?? this.name,
      );

  static const CONSTRUCTOR = 'messageSponsorTypeWebsite';

  @override
  String getConstructor() => CONSTRUCTOR;
}
