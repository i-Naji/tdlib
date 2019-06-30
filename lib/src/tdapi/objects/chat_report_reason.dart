part of '../tdapi.dart';

class ChatReportReason implements TLObject {
  /// Describes the reason why a chat is reported
  ChatReportReason();

  /// a ChatReportReason return type can be :
  /// * ChatReportReasonSpam
  /// * ChatReportReasonCopyright
  /// * ChatReportReasonChildAbuse
  /// * ChatReportReasonViolence
  /// * ChatReportReasonPornography
  /// * ChatReportReasonCustom
  factory ChatReportReason.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case ChatReportReasonSpam.CONSTRUCTOR:
        return ChatReportReasonSpam.fromJson(json);
      case ChatReportReasonCopyright.CONSTRUCTOR:
        return ChatReportReasonCopyright.fromJson(json);
      case ChatReportReasonChildAbuse.CONSTRUCTOR:
        return ChatReportReasonChildAbuse.fromJson(json);
      case ChatReportReasonViolence.CONSTRUCTOR:
        return ChatReportReasonViolence.fromJson(json);
      case ChatReportReasonPornography.CONSTRUCTOR:
        return ChatReportReasonPornography.fromJson(json);
      case ChatReportReasonCustom.CONSTRUCTOR:
        return ChatReportReasonCustom.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'chatReportReason';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonSpam implements ChatReportReason {
  /// The chat contains spam messages.
  ///
  ChatReportReasonSpam();

  /// Parse from a json
  ChatReportReasonSpam.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'chatReportReasonSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonViolence implements ChatReportReason {
  /// The chat promotes violence.
  ///
  ChatReportReasonViolence();

  /// Parse from a json
  ChatReportReasonViolence.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'chatReportReasonViolence';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonPornography implements ChatReportReason {
  /// The chat contains pornographic messages.
  ///
  ChatReportReasonPornography();

  /// Parse from a json
  ChatReportReasonPornography.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'chatReportReasonPornography';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonChildAbuse implements ChatReportReason {
  /// The chat has child abuse related content.
  ///
  ChatReportReasonChildAbuse();

  /// Parse from a json
  ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'chatReportReasonChildAbuse';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonCopyright implements ChatReportReason {
  /// The chat contains copyrighted content.
  ///
  ChatReportReasonCopyright();

  /// Parse from a json
  ChatReportReasonCopyright.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'chatReportReasonCopyright';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatReportReasonCustom implements ChatReportReason {
  String text;

  /// A custom reason provided by the user.
  ///[text] Report text
  ChatReportReasonCustom({this.text});

  /// Parse from a json
  ChatReportReasonCustom.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text};
  }

  static const String CONSTRUCTOR = 'chatReportReasonCustom';

  @override
  String getConstructor() => CONSTRUCTOR;
}
