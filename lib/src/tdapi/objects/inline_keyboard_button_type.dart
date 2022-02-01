part of '../tdapi.dart';

class InlineKeyboardButtonType extends TdObject {

  /// Describes the type of an inline keyboard button
  const InlineKeyboardButtonType();
  
  /// a InlineKeyboardButtonType return type can be :
  /// * [InlineKeyboardButtonTypeUrl]
  /// * [InlineKeyboardButtonTypeLoginUrl]
  /// * [InlineKeyboardButtonTypeCallback]
  /// * [InlineKeyboardButtonTypeCallbackWithPassword]
  /// * [InlineKeyboardButtonTypeCallbackGame]
  /// * [InlineKeyboardButtonTypeSwitchInline]
  /// * [InlineKeyboardButtonTypeBuy]
  /// * [InlineKeyboardButtonTypeUser]
  factory InlineKeyboardButtonType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InlineKeyboardButtonTypeUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeCallback.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackWithPassword.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.CONSTRUCTOR:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeBuy.CONSTRUCTOR:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      case InlineKeyboardButtonTypeUser.CONSTRUCTOR:
        return InlineKeyboardButtonTypeUser.fromJson(json);
      default:
        return const InlineKeyboardButtonType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InlineKeyboardButtonType copyWith() => const InlineKeyboardButtonType();

  static const CONSTRUCTOR = 'inlineKeyboardButtonType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {

  /// A button that opens a specified URL
  const InlineKeyboardButtonTypeUrl({
    required this.url,
  });
  
  /// [url] HTTP or tg:// URL to open
  final String url;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeUrl(
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
  InlineKeyboardButtonTypeUrl copyWith({
    String? url,
  }) => InlineKeyboardButtonTypeUrl(
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {

  /// A button that opens a specified URL and automatically authorize the current user if allowed to do so
  const InlineKeyboardButtonTypeLoginUrl({
    required this.url,
    required this.id,
    required this.forwardText,
  });
  
  /// [url] An HTTP URL to open 
  final String url;

  /// [id] Unique button identifier 
  final int id;

  /// [forwardText] If non-empty, new text of the button in forwarded messages
  final String forwardText;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeLoginUrl.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeLoginUrl(
    url: json['url'],
    id: json['id'],
    forwardText: json['forward_text'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "id": id,
      "forward_text": forwardText,
    };
  }
  
  @override
  InlineKeyboardButtonTypeLoginUrl copyWith({
    String? url,
    int? id,
    String? forwardText,
  }) => InlineKeyboardButtonTypeLoginUrl(
    url: url ?? this.url,
    id: id ?? this.id,
    forwardText: forwardText ?? this.forwardText,
  );

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeLoginUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {

  /// A button that sends a callback query to a bot
  const InlineKeyboardButtonTypeCallback({
    required this.data,
  });
  
  /// [data] Data to be sent to the bot via a callback query
  final String data;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeCallback.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeCallback(
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
    };
  }
  
  @override
  InlineKeyboardButtonTypeCallback copyWith({
    String? data,
  }) => InlineKeyboardButtonTypeCallback(
    data: data ?? this.data,
  );

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallback';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineKeyboardButtonTypeCallbackWithPassword extends InlineKeyboardButtonType {

  /// A button that asks for password of the current user and then sends a callback query to a bot
  const InlineKeyboardButtonTypeCallbackWithPassword({
    required this.data,
  });
  
  /// [data] Data to be sent to the bot via a callback query
  final String data;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeCallbackWithPassword.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeCallbackWithPassword(
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
    };
  }
  
  @override
  InlineKeyboardButtonTypeCallbackWithPassword copyWith({
    String? data,
  }) => InlineKeyboardButtonTypeCallbackWithPassword(
    data: data ?? this.data,
  );

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallbackWithPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {

  /// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame
  const InlineKeyboardButtonTypeCallbackGame();
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json) => const InlineKeyboardButtonTypeCallbackGame();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InlineKeyboardButtonTypeCallbackGame copyWith() => const InlineKeyboardButtonTypeCallbackGame();

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallbackGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {

  /// A button that forces an inline query to the bot to be inserted in the input field
  const InlineKeyboardButtonTypeSwitchInline({
    required this.query,
    required this.inCurrentChat,
  });
  
  /// [query] Inline query to be sent to the bot 
  final String query;

  /// [inCurrentChat] True, if the inline query must be sent from the current chat
  final bool inCurrentChat;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeSwitchInline.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeSwitchInline(
    query: json['query'],
    inCurrentChat: json['in_current_chat'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
      "in_current_chat": inCurrentChat,
    };
  }
  
  @override
  InlineKeyboardButtonTypeSwitchInline copyWith({
    String? query,
    bool? inCurrentChat,
  }) => InlineKeyboardButtonTypeSwitchInline(
    query: query ?? this.query,
    inCurrentChat: inCurrentChat ?? this.inCurrentChat,
  );

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeSwitchInline';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {

  /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice
  const InlineKeyboardButtonTypeBuy();
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json) => const InlineKeyboardButtonTypeBuy();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InlineKeyboardButtonTypeBuy copyWith() => const InlineKeyboardButtonTypeBuy();

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeBuy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineKeyboardButtonTypeUser extends InlineKeyboardButtonType {

  /// A button with a user reference to be handled in the same way as textEntityTypeMentionName entities
  const InlineKeyboardButtonTypeUser({
    required this.userId,
  });
  
  /// [userId] User identifier
  final int userId;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeUser.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeUser(
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }
  
  @override
  InlineKeyboardButtonTypeUser copyWith({
    int? userId,
  }) => InlineKeyboardButtonTypeUser(
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
