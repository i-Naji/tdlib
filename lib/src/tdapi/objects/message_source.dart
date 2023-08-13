part of '../tdapi.dart';

class MessageSource extends TdObject {
  /// Describes source of a message
  const MessageSource();

  /// a MessageSource return type can be :
  /// * [MessageSourceChatHistory]
  /// * [MessageSourceMessageThreadHistory]
  /// * [MessageSourceForumTopicHistory]
  /// * [MessageSourceHistoryPreview]
  /// * [MessageSourceChatList]
  /// * [MessageSourceSearch]
  /// * [MessageSourceChatEventLog]
  /// * [MessageSourceNotification]
  /// * [MessageSourceScreenshot]
  /// * [MessageSourceOther]
  factory MessageSource.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSourceChatHistory.CONSTRUCTOR:
        return MessageSourceChatHistory.fromJson(json);
      case MessageSourceMessageThreadHistory.CONSTRUCTOR:
        return MessageSourceMessageThreadHistory.fromJson(json);
      case MessageSourceForumTopicHistory.CONSTRUCTOR:
        return MessageSourceForumTopicHistory.fromJson(json);
      case MessageSourceHistoryPreview.CONSTRUCTOR:
        return MessageSourceHistoryPreview.fromJson(json);
      case MessageSourceChatList.CONSTRUCTOR:
        return MessageSourceChatList.fromJson(json);
      case MessageSourceSearch.CONSTRUCTOR:
        return MessageSourceSearch.fromJson(json);
      case MessageSourceChatEventLog.CONSTRUCTOR:
        return MessageSourceChatEventLog.fromJson(json);
      case MessageSourceNotification.CONSTRUCTOR:
        return MessageSourceNotification.fromJson(json);
      case MessageSourceScreenshot.CONSTRUCTOR:
        return MessageSourceScreenshot.fromJson(json);
      case MessageSourceOther.CONSTRUCTOR:
        return MessageSourceOther.fromJson(json);
      default:
        return const MessageSource();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  MessageSource copyWith() => const MessageSource();

  static const CONSTRUCTOR = 'messageSource';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceChatHistory extends MessageSource {
  /// The message is from a chat history
  const MessageSourceChatHistory();

  /// Parse from a json
  factory MessageSourceChatHistory.fromJson(Map<String, dynamic> json) =>
      const MessageSourceChatHistory();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceChatHistory copyWith() => const MessageSourceChatHistory();

  static const CONSTRUCTOR = 'messageSourceChatHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceMessageThreadHistory extends MessageSource {
  /// The message is from a message thread history
  const MessageSourceMessageThreadHistory();

  /// Parse from a json
  factory MessageSourceMessageThreadHistory.fromJson(
          Map<String, dynamic> json) =>
      const MessageSourceMessageThreadHistory();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceMessageThreadHistory copyWith() =>
      const MessageSourceMessageThreadHistory();

  static const CONSTRUCTOR = 'messageSourceMessageThreadHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceForumTopicHistory extends MessageSource {
  /// The message is from a forum topic history
  const MessageSourceForumTopicHistory();

  /// Parse from a json
  factory MessageSourceForumTopicHistory.fromJson(Map<String, dynamic> json) =>
      const MessageSourceForumTopicHistory();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceForumTopicHistory copyWith() =>
      const MessageSourceForumTopicHistory();

  static const CONSTRUCTOR = 'messageSourceForumTopicHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceHistoryPreview extends MessageSource {
  /// The message is from chat, message thread or forum topic history preview
  const MessageSourceHistoryPreview();

  /// Parse from a json
  factory MessageSourceHistoryPreview.fromJson(Map<String, dynamic> json) =>
      const MessageSourceHistoryPreview();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceHistoryPreview copyWith() => const MessageSourceHistoryPreview();

  static const CONSTRUCTOR = 'messageSourceHistoryPreview';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceChatList extends MessageSource {
  /// The message is from a chat list or a forum topic list
  const MessageSourceChatList();

  /// Parse from a json
  factory MessageSourceChatList.fromJson(Map<String, dynamic> json) =>
      const MessageSourceChatList();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceChatList copyWith() => const MessageSourceChatList();

  static const CONSTRUCTOR = 'messageSourceChatList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceSearch extends MessageSource {
  /// The message is from search results, including file downloads, local file list, outgoing document messages, calendar
  const MessageSourceSearch();

  /// Parse from a json
  factory MessageSourceSearch.fromJson(Map<String, dynamic> json) =>
      const MessageSourceSearch();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceSearch copyWith() => const MessageSourceSearch();

  static const CONSTRUCTOR = 'messageSourceSearch';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceChatEventLog extends MessageSource {
  /// The message is from a chat event log
  const MessageSourceChatEventLog();

  /// Parse from a json
  factory MessageSourceChatEventLog.fromJson(Map<String, dynamic> json) =>
      const MessageSourceChatEventLog();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceChatEventLog copyWith() => const MessageSourceChatEventLog();

  static const CONSTRUCTOR = 'messageSourceChatEventLog';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceNotification extends MessageSource {
  /// The message is from a notification
  const MessageSourceNotification();

  /// Parse from a json
  factory MessageSourceNotification.fromJson(Map<String, dynamic> json) =>
      const MessageSourceNotification();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceNotification copyWith() => const MessageSourceNotification();

  static const CONSTRUCTOR = 'messageSourceNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceScreenshot extends MessageSource {
  /// The message was screenshotted; the source must be used only if the message content was visible during the screenshot
  const MessageSourceScreenshot();

  /// Parse from a json
  factory MessageSourceScreenshot.fromJson(Map<String, dynamic> json) =>
      const MessageSourceScreenshot();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceScreenshot copyWith() => const MessageSourceScreenshot();

  static const CONSTRUCTOR = 'messageSourceScreenshot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSourceOther extends MessageSource {
  /// The message is from some other source
  const MessageSourceOther();

  /// Parse from a json
  factory MessageSourceOther.fromJson(Map<String, dynamic> json) =>
      const MessageSourceOther();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageSourceOther copyWith() => const MessageSourceOther();

  static const CONSTRUCTOR = 'messageSourceOther';

  @override
  String getConstructor() => CONSTRUCTOR;
}
