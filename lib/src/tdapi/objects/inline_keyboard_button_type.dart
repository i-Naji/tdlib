part of '../tdapi.dart';

class InlineKeyboardButtonType extends TdObject {
  

  /// Describes the type of an inline keyboard button
  InlineKeyboardButtonType();

  /// a InlineKeyboardButtonType return type can be :
  /// * InlineKeyboardButtonTypeUrl
  /// * InlineKeyboardButtonTypeLoginUrl
  /// * InlineKeyboardButtonTypeCallback
  /// * InlineKeyboardButtonTypeCallbackGame
  /// * InlineKeyboardButtonTypeSwitchInline
  /// * InlineKeyboardButtonTypeBuy
  factory InlineKeyboardButtonType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InlineKeyboardButtonTypeUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeCallback.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.CONSTRUCTOR:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeBuy.CONSTRUCTOR:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonType';
}

class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  String url;

  /// A button that opens a specified URL. 
  /// [url] HTTP or tg:// URL to open
  InlineKeyboardButtonTypeUrl({this.url});

  /// Parse from a json
  InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeUrl';
}

class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  String url;
  int id;
  String forwardText;

  /// A button that opens a specified URL and automatically logs in in current user if they allowed to do that. 
  /// [url] An HTTP URL to open . 
  /// [id] Unique button identifier . 
  /// [forwardText] If non-empty, new text of the button in forwarded messages
  InlineKeyboardButtonTypeLoginUrl({this.url,
    this.id,
    this.forwardText});

  /// Parse from a json
  InlineKeyboardButtonTypeLoginUrl.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
    this.id = json['id'];
    this.forwardText = json['forward_text'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "id": this.id,
      "forward_text": this.forwardText,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeLoginUrl';
}

class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  String data;

  /// A button that sends a special callback query to a bot. 
  /// [data] Data to be sent to the bot via a callback query
  InlineKeyboardButtonTypeCallback({this.data});

  /// Parse from a json
  InlineKeyboardButtonTypeCallback.fromJson(Map<String, dynamic> json)  {
    this.data = json['data'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallback';
}

class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  

  /// A button with a game that sends a special callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame
  InlineKeyboardButtonTypeCallbackGame();

  /// Parse from a json
  InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallbackGame';
}

class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  String query;
  bool inCurrentChat;

  /// A button that forces an inline query to the bot to be inserted in the input field. 
  /// [query] Inline query to be sent to the bot . 
  /// [inCurrentChat] True, if the inline query should be sent from the current chat
  InlineKeyboardButtonTypeSwitchInline({this.query,
    this.inCurrentChat});

  /// Parse from a json
  InlineKeyboardButtonTypeSwitchInline.fromJson(Map<String, dynamic> json)  {
    this.query = json['query'];
    this.inCurrentChat = json['in_current_chat'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "in_current_chat": this.inCurrentChat,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeSwitchInline';
}

class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  

  /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice
  InlineKeyboardButtonTypeBuy();

  /// Parse from a json
  InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeBuy';
}