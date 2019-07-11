part of '../tdapi.dart';

class TextEntityType implements TLObject {
  /// Represents a part of the text which must be formatted differently
  TextEntityType();

  /// a TextEntityType return type can be :
  /// * TextEntityTypeMention
  /// * TextEntityTypeHashtag
  /// * TextEntityTypeCashtag
  /// * TextEntityTypeBotCommand
  /// * TextEntityTypeUrl
  /// * TextEntityTypeEmailAddress
  /// * TextEntityTypeBold
  /// * TextEntityTypeItalic
  /// * TextEntityTypeCode
  /// * TextEntityTypePre
  /// * TextEntityTypePreCode
  /// * TextEntityTypeTextUrl
  /// * TextEntityTypeMentionName
  /// * TextEntityTypePhoneNumber
  factory TextEntityType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case TextEntityTypeMention.CONSTRUCTOR:
        return TextEntityTypeMention.fromJson(json);
      case TextEntityTypeHashtag.CONSTRUCTOR:
        return TextEntityTypeHashtag.fromJson(json);
      case TextEntityTypeCashtag.CONSTRUCTOR:
        return TextEntityTypeCashtag.fromJson(json);
      case TextEntityTypeBotCommand.CONSTRUCTOR:
        return TextEntityTypeBotCommand.fromJson(json);
      case TextEntityTypeUrl.CONSTRUCTOR:
        return TextEntityTypeUrl.fromJson(json);
      case TextEntityTypeEmailAddress.CONSTRUCTOR:
        return TextEntityTypeEmailAddress.fromJson(json);
      case TextEntityTypeBold.CONSTRUCTOR:
        return TextEntityTypeBold.fromJson(json);
      case TextEntityTypeItalic.CONSTRUCTOR:
        return TextEntityTypeItalic.fromJson(json);
      case TextEntityTypeCode.CONSTRUCTOR:
        return TextEntityTypeCode.fromJson(json);
      case TextEntityTypePre.CONSTRUCTOR:
        return TextEntityTypePre.fromJson(json);
      case TextEntityTypePreCode.CONSTRUCTOR:
        return TextEntityTypePreCode.fromJson(json);
      case TextEntityTypeTextUrl.CONSTRUCTOR:
        return TextEntityTypeTextUrl.fromJson(json);
      case TextEntityTypeMentionName.CONSTRUCTOR:
        return TextEntityTypeMentionName.fromJson(json);
      case TextEntityTypePhoneNumber.CONSTRUCTOR:
        return TextEntityTypePhoneNumber.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "textEntityType";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeMention implements TextEntityType {
  /// A mention of a user by their username.
  ///
  TextEntityTypeMention();

  /// Parse from a json
  TextEntityTypeMention.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeMention";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeHashtag implements TextEntityType {
  /// A hashtag text, beginning with "#".
  ///
  TextEntityTypeHashtag();

  /// Parse from a json
  TextEntityTypeHashtag.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeHashtag";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeCashtag implements TextEntityType {
  /// A cashtag text, beginning with "$" and consisting of capital english letters (i.e. "$USD").
  ///
  TextEntityTypeCashtag();

  /// Parse from a json
  TextEntityTypeCashtag.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeCashtag";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeBotCommand implements TextEntityType {
  /// A bot command, beginning with ".
  ///
  TextEntityTypeBotCommand();

  /// Parse from a json
  TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeBotCommand";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeUrl implements TextEntityType {
  /// An HTTP URL.
  ///
  TextEntityTypeUrl();

  /// Parse from a json
  TextEntityTypeUrl.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeUrl";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeEmailAddress implements TextEntityType {
  /// An email address.
  ///
  TextEntityTypeEmailAddress();

  /// Parse from a json
  TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeEmailAddress";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeBold implements TextEntityType {
  /// A bold text.
  ///
  TextEntityTypeBold();

  /// Parse from a json
  TextEntityTypeBold.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeBold";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeItalic implements TextEntityType {
  /// An italic text.
  ///
  TextEntityTypeItalic();

  /// Parse from a json
  TextEntityTypeItalic.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeItalic";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeCode implements TextEntityType {
  /// Text that must be formatted as if inside a code HTML tag.
  ///
  TextEntityTypeCode();

  /// Parse from a json
  TextEntityTypeCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypeCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypePre implements TextEntityType {
  /// Text that must be formatted as if inside a pre HTML tag.
  ///
  TextEntityTypePre();

  /// Parse from a json
  TextEntityTypePre.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypePre";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypePreCode implements TextEntityType {
  String language;

  /// Text that must be formatted as if inside pre, and code HTML tags.
  ///[language] Programming language of the code; as defined by the sender
  TextEntityTypePreCode({this.language});

  /// Parse from a json
  TextEntityTypePreCode.fromJson(Map<String, dynamic> json) {
    this.language = json['language'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "language": this.language};
  }

  static const String CONSTRUCTOR = "textEntityTypePreCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeTextUrl implements TextEntityType {
  String url;

  /// A text description shown instead of a raw URL.
  ///[url] HTTP or tg:// URL to be opened when the link is clicked
  TextEntityTypeTextUrl({this.url});

  /// Parse from a json
  TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "url": this.url};
  }

  static const String CONSTRUCTOR = "textEntityTypeTextUrl";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeMentionName implements TextEntityType {
  int userId;

  /// A text shows instead of a raw mention of the user (e.g., when the user has no username).
  ///[userId] Identifier of the mentioned user
  TextEntityTypeMentionName({this.userId});

  /// Parse from a json
  TextEntityTypeMentionName.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "user_id": this.userId};
  }

  static const String CONSTRUCTOR = "textEntityTypeMentionName";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypePhoneNumber implements TextEntityType {
  /// A phone number.
  ///
  TextEntityTypePhoneNumber();

  /// Parse from a json
  TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "textEntityTypePhoneNumber";

  @override
  String getConstructor() => CONSTRUCTOR;
}
