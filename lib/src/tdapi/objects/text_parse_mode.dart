part of '../tdapi.dart';

class TextParseMode implements TdObject {
  /// Describes the way the text should be parsed for TextEntities
  TextParseMode();

  /// a TextParseMode return type can be :
  /// * TextParseModeMarkdown
  /// * TextParseModeHTML
  factory TextParseMode.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case TextParseModeMarkdown.CONSTRUCTOR:
        return TextParseModeMarkdown.fromJson(json);
      case TextParseModeHTML.CONSTRUCTOR:
        return TextParseModeHTML.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "textParseMode";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextParseModeMarkdown implements TextParseMode {
  /// The text should be parsed in markdown-style.
  ///
  TextParseModeMarkdown();

  /// Parse from a json
  TextParseModeMarkdown.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textParseModeMarkdown";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextParseModeHTML implements TextParseMode {
  /// The text should be parsed in HTML-style.
  ///
  TextParseModeHTML();

  /// Parse from a json
  TextParseModeHTML.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textParseModeHTML";

  @override
  String getConstructor() => CONSTRUCTOR;
}
