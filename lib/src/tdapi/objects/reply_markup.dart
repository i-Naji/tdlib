part of '../tdapi.dart';

class ReplyMarkup extends TdObject {
  /// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots
  ReplyMarkup();

  /// a ReplyMarkup return type can be :
  /// * ReplyMarkupRemoveKeyboard
  /// * ReplyMarkupForceReply
  /// * ReplyMarkupShowKeyboard
  /// * ReplyMarkupInlineKeyboard
  factory ReplyMarkup.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ReplyMarkupRemoveKeyboard.CONSTRUCTOR:
        return ReplyMarkupRemoveKeyboard.fromJson(json);
      case ReplyMarkupForceReply.CONSTRUCTOR:
        return ReplyMarkupForceReply.fromJson(json);
      case ReplyMarkupShowKeyboard.CONSTRUCTOR:
        return ReplyMarkupShowKeyboard.fromJson(json);
      case ReplyMarkupInlineKeyboard.CONSTRUCTOR:
        return ReplyMarkupInlineKeyboard.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'replyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  /// Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, UpdateChatReplyMarkup with message_id == 0 will be sent
  ReplyMarkupRemoveKeyboard({this.isPersonal});

  /// [isPersonal] True, if the keyboard is removed only for the mentioned users or the target user of a reply
  bool isPersonal;

  /// Parse from a json
  ReplyMarkupRemoveKeyboard.fromJson(Map<String, dynamic> json) {
    this.isPersonal = json['is_personal'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_personal": this.isPersonal,
    };
  }

  static const CONSTRUCTOR = 'replyMarkupRemoveKeyboard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReplyMarkupForceReply extends ReplyMarkup {
  /// Instructs application to force a reply to this message
  ReplyMarkupForceReply({this.isPersonal});

  /// [isPersonal] True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply
  bool isPersonal;

  /// Parse from a json
  ReplyMarkupForceReply.fromJson(Map<String, dynamic> json) {
    this.isPersonal = json['is_personal'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_personal": this.isPersonal,
    };
  }

  static const CONSTRUCTOR = 'replyMarkupForceReply';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReplyMarkupShowKeyboard extends ReplyMarkup {
  /// Contains a custom keyboard layout to quickly reply to bots
  ReplyMarkupShowKeyboard(
      {this.rows, this.resizeKeyboard, this.oneTime, this.isPersonal});

  /// [rows] A list of rows of bot keyboard buttons
  List<List<KeyboardButton>> rows;

  /// [resizeKeyboard] True, if the application needs to resize the keyboard vertically
  bool resizeKeyboard;

  /// [oneTime] True, if the application needs to hide the keyboard after use
  bool oneTime;

  /// [isPersonal] True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply
  bool isPersonal;

  /// Parse from a json
  ReplyMarkupShowKeyboard.fromJson(Map<String, dynamic> json) {
    this.rows = List<List<KeyboardButton>>.from((json['rows'] ?? [])
        .map((item) => List<KeyboardButton>.from((item ?? [])
            .map((innerItem) =>
                KeyboardButton.fromJson(innerItem ?? <String, dynamic>{}))
            .toList()))
        .toList());
    this.resizeKeyboard = json['resize_keyboard'];
    this.oneTime = json['one_time'];
    this.isPersonal = json['is_personal'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rows":
          this.rows.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "resize_keyboard": this.resizeKeyboard,
      "one_time": this.oneTime,
      "is_personal": this.isPersonal,
    };
  }

  static const CONSTRUCTOR = 'replyMarkupShowKeyboard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  /// Contains an inline keyboard layout
  ReplyMarkupInlineKeyboard({this.rows});

  /// [rows] A list of rows of inline keyboard buttons
  List<List<InlineKeyboardButton>> rows;

  /// Parse from a json
  ReplyMarkupInlineKeyboard.fromJson(Map<String, dynamic> json) {
    this.rows = List<List<InlineKeyboardButton>>.from((json['rows'] ?? [])
        .map((item) => List<InlineKeyboardButton>.from((item ?? [])
            .map((innerItem) =>
                InlineKeyboardButton.fromJson(innerItem ?? <String, dynamic>{}))
            .toList()))
        .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rows":
          this.rows.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'replyMarkupInlineKeyboard';

  @override
  String getConstructor() => CONSTRUCTOR;
}
