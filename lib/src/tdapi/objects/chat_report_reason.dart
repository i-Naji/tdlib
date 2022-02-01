part of '../tdapi.dart';

class ChatReportReason extends TdObject {

  /// Describes the reason why a chat is reported
  const ChatReportReason();
  
  /// a ChatReportReason return type can be :
  /// * [ChatReportReasonSpam]
  /// * [ChatReportReasonViolence]
  /// * [ChatReportReasonPornography]
  /// * [ChatReportReasonChildAbuse]
  /// * [ChatReportReasonCopyright]
  /// * [ChatReportReasonUnrelatedLocation]
  /// * [ChatReportReasonFake]
  /// * [ChatReportReasonCustom]
  factory ChatReportReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatReportReasonSpam.CONSTRUCTOR:
        return ChatReportReasonSpam.fromJson(json);
      case ChatReportReasonViolence.CONSTRUCTOR:
        return ChatReportReasonViolence.fromJson(json);
      case ChatReportReasonPornography.CONSTRUCTOR:
        return ChatReportReasonPornography.fromJson(json);
      case ChatReportReasonChildAbuse.CONSTRUCTOR:
        return ChatReportReasonChildAbuse.fromJson(json);
      case ChatReportReasonCopyright.CONSTRUCTOR:
        return ChatReportReasonCopyright.fromJson(json);
      case ChatReportReasonUnrelatedLocation.CONSTRUCTOR:
        return ChatReportReasonUnrelatedLocation.fromJson(json);
      case ChatReportReasonFake.CONSTRUCTOR:
        return ChatReportReasonFake.fromJson(json);
      case ChatReportReasonCustom.CONSTRUCTOR:
        return ChatReportReasonCustom.fromJson(json);
      default:
        return const ChatReportReason();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatReportReason copyWith() => const ChatReportReason();

  static const CONSTRUCTOR = 'chatReportReason';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatReportReasonSpam extends ChatReportReason {

  /// The chat contains spam messages
  const ChatReportReasonSpam();
  
  /// Parse from a json
  factory ChatReportReasonSpam.fromJson(Map<String, dynamic> json) => const ChatReportReasonSpam();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatReportReasonSpam copyWith() => const ChatReportReasonSpam();

  static const CONSTRUCTOR = 'chatReportReasonSpam';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatReportReasonViolence extends ChatReportReason {

  /// The chat promotes violence
  const ChatReportReasonViolence();
  
  /// Parse from a json
  factory ChatReportReasonViolence.fromJson(Map<String, dynamic> json) => const ChatReportReasonViolence();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatReportReasonViolence copyWith() => const ChatReportReasonViolence();

  static const CONSTRUCTOR = 'chatReportReasonViolence';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatReportReasonPornography extends ChatReportReason {

  /// The chat contains pornographic messages
  const ChatReportReasonPornography();
  
  /// Parse from a json
  factory ChatReportReasonPornography.fromJson(Map<String, dynamic> json) => const ChatReportReasonPornography();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatReportReasonPornography copyWith() => const ChatReportReasonPornography();

  static const CONSTRUCTOR = 'chatReportReasonPornography';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatReportReasonChildAbuse extends ChatReportReason {

  /// The chat has child abuse related content
  const ChatReportReasonChildAbuse();
  
  /// Parse from a json
  factory ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json) => const ChatReportReasonChildAbuse();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatReportReasonChildAbuse copyWith() => const ChatReportReasonChildAbuse();

  static const CONSTRUCTOR = 'chatReportReasonChildAbuse';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatReportReasonCopyright extends ChatReportReason {

  /// The chat contains copyrighted content
  const ChatReportReasonCopyright();
  
  /// Parse from a json
  factory ChatReportReasonCopyright.fromJson(Map<String, dynamic> json) => const ChatReportReasonCopyright();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatReportReasonCopyright copyWith() => const ChatReportReasonCopyright();

  static const CONSTRUCTOR = 'chatReportReasonCopyright';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatReportReasonUnrelatedLocation extends ChatReportReason {

  /// The location-based chat is unrelated to its stated location
  const ChatReportReasonUnrelatedLocation();
  
  /// Parse from a json
  factory ChatReportReasonUnrelatedLocation.fromJson(Map<String, dynamic> json) => const ChatReportReasonUnrelatedLocation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatReportReasonUnrelatedLocation copyWith() => const ChatReportReasonUnrelatedLocation();

  static const CONSTRUCTOR = 'chatReportReasonUnrelatedLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatReportReasonFake extends ChatReportReason {

  /// The chat represents a fake account
  const ChatReportReasonFake();
  
  /// Parse from a json
  factory ChatReportReasonFake.fromJson(Map<String, dynamic> json) => const ChatReportReasonFake();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatReportReasonFake copyWith() => const ChatReportReasonFake();

  static const CONSTRUCTOR = 'chatReportReasonFake';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatReportReasonCustom extends ChatReportReason {

  /// A custom reason provided by the user
  const ChatReportReasonCustom();
  
  /// Parse from a json
  factory ChatReportReasonCustom.fromJson(Map<String, dynamic> json) => const ChatReportReasonCustom();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatReportReasonCustom copyWith() => const ChatReportReasonCustom();

  static const CONSTRUCTOR = 'chatReportReasonCustom';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
