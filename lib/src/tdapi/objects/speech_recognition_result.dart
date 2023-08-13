part of '../tdapi.dart';

class SpeechRecognitionResult extends TdObject {
  /// Describes result of speech recognition in a voice note
  const SpeechRecognitionResult();

  /// a SpeechRecognitionResult return type can be :
  /// * [SpeechRecognitionResultPending]
  /// * [SpeechRecognitionResultText]
  /// * [SpeechRecognitionResultError]
  factory SpeechRecognitionResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SpeechRecognitionResultPending.CONSTRUCTOR:
        return SpeechRecognitionResultPending.fromJson(json);
      case SpeechRecognitionResultText.CONSTRUCTOR:
        return SpeechRecognitionResultText.fromJson(json);
      case SpeechRecognitionResultError.CONSTRUCTOR:
        return SpeechRecognitionResultError.fromJson(json);
      default:
        return const SpeechRecognitionResult();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  SpeechRecognitionResult copyWith() => const SpeechRecognitionResult();

  static const CONSTRUCTOR = 'speechRecognitionResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SpeechRecognitionResultPending extends SpeechRecognitionResult {
  /// The speech recognition is ongoing
  const SpeechRecognitionResultPending({
    required this.partialText,
  });

  /// [partialText] Partially recognized text
  final String partialText;

  /// Parse from a json
  factory SpeechRecognitionResultPending.fromJson(Map<String, dynamic> json) =>
      SpeechRecognitionResultPending(
        partialText: json['partial_text'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "partial_text": partialText,
    };
  }

  @override
  SpeechRecognitionResultPending copyWith({
    String? partialText,
  }) =>
      SpeechRecognitionResultPending(
        partialText: partialText ?? this.partialText,
      );

  static const CONSTRUCTOR = 'speechRecognitionResultPending';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SpeechRecognitionResultText extends SpeechRecognitionResult {
  /// The speech recognition successfully finished
  const SpeechRecognitionResultText({
    required this.text,
  });

  /// [text] Recognized text
  final String text;

  /// Parse from a json
  factory SpeechRecognitionResultText.fromJson(Map<String, dynamic> json) =>
      SpeechRecognitionResultText(
        text: json['text'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
    };
  }

  @override
  SpeechRecognitionResultText copyWith({
    String? text,
  }) =>
      SpeechRecognitionResultText(
        text: text ?? this.text,
      );

  static const CONSTRUCTOR = 'speechRecognitionResultText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SpeechRecognitionResultError extends SpeechRecognitionResult {
  /// The speech recognition failed
  const SpeechRecognitionResultError({
    required this.error,
  });

  /// [error] Recognition error
  final TdError error;

  /// Parse from a json
  factory SpeechRecognitionResultError.fromJson(Map<String, dynamic> json) =>
      SpeechRecognitionResultError(
        error: TdError.fromJson(json['error']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "error": error.toJson(),
    };
  }

  @override
  SpeechRecognitionResultError copyWith({
    TdError? error,
  }) =>
      SpeechRecognitionResultError(
        error: error ?? this.error,
      );

  static const CONSTRUCTOR = 'speechRecognitionResultError';

  @override
  String getConstructor() => CONSTRUCTOR;
}
