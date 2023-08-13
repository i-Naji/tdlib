part of '../tdapi.dart';

class TranslateText extends TdFunction {
  /// Translates a text to the given language. If the current user is a Telegram Premium user, then text formatting is preserved
  const TranslateText({
    required this.text,
    required this.toLanguageCode,
  });

  /// [text] Text to translate
  final FormattedText text;

  /// [toLanguageCode] Language code of the language to which the message is translated. Must be one of. "af", "sq", "am", "ar", "hy", "az", "eu", "be", "bn", "bs", "bg", "ca", "ceb", "zh-CN", "zh", "zh-Hans", "zh-TW", "zh-Hant", "co", "hr", "cs", "da", "nl", "en", "eo", "et",. "fi", "fr", "fy", "gl", "ka", "de", "el", "gu", "ht", "ha", "haw", "he", "iw", "hi", "hmn", "hu", "is", "ig", "id", "in", "ga", "it", "ja", "jv", "kn", "kk", "km", "rw", "ko",. "ku", "ky", "lo", "la", "lv", "lt", "lb", "mk", "mg", "ms", "ml", "mt", "mi", "mr", "mn", "my", "ne", "no", "ny", "or", "ps", "fa", "pl", "pt", "pa", "ro", "ru", "sm", "gd", "sr",. "st", "sn", "sd", "si", "sk", "sl", "so", "es", "su", "sw", "sv", "tl", "tg", "ta", "tt", "te", "th", "tr", "tk", "uk", "ur", "ug", "uz", "vi", "cy", "xh", "yi", "ji", "yo", "zu"
  final String toLanguageCode;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "to_language_code": toLanguageCode,
      "@extra": extra,
    };
  }

  TranslateText copyWith({
    FormattedText? text,
    String? toLanguageCode,
  }) =>
      TranslateText(
        text: text ?? this.text,
        toLanguageCode: toLanguageCode ?? this.toLanguageCode,
      );

  static const CONSTRUCTOR = 'translateText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
