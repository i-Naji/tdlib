part of '../tdapi.dart';

class TextEntityType extends TdObject {
  

  /// Represents a part of the text which must be formatted differently
  TextEntityType();

  /// a TextEntityType return type can be :
  /// * TextEntityTypeMention
  /// * TextEntityTypeHashtag
  /// * TextEntityTypeCashtag
  /// * TextEntityTypeBotCommand
  /// * TextEntityTypeUrl
  /// * TextEntityTypeEmailAddress
  /// * TextEntityTypePhoneNumber
  /// * TextEntityTypeBankCardNumber
  /// * TextEntityTypeBold
  /// * TextEntityTypeItalic
  /// * TextEntityTypeUnderline
  /// * TextEntityTypeStrikethrough
  /// * TextEntityTypeCode
  /// * TextEntityTypePre
  /// * TextEntityTypePreCode
  /// * TextEntityTypeTextUrl
  /// * TextEntityTypeMentionName
  factory TextEntityType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
      case TextEntityTypePhoneNumber.CONSTRUCTOR:
        return TextEntityTypePhoneNumber.fromJson(json);
      case TextEntityTypeBankCardNumber.CONSTRUCTOR:
        return TextEntityTypeBankCardNumber.fromJson(json);
      case TextEntityTypeBold.CONSTRUCTOR:
        return TextEntityTypeBold.fromJson(json);
      case TextEntityTypeItalic.CONSTRUCTOR:
        return TextEntityTypeItalic.fromJson(json);
      case TextEntityTypeUnderline.CONSTRUCTOR:
        return TextEntityTypeUnderline.fromJson(json);
      case TextEntityTypeStrikethrough.CONSTRUCTOR:
        return TextEntityTypeStrikethrough.fromJson(json);
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
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'textEntityType';
}

class TextEntityTypeMention extends TextEntityType {
  

  /// A mention of a user by their username
  TextEntityTypeMention();

  /// Parse from a json
  TextEntityTypeMention.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeMention';
}

class TextEntityTypeHashtag extends TextEntityType {
  

  /// A hashtag text, beginning with "#"
  TextEntityTypeHashtag();

  /// Parse from a json
  TextEntityTypeHashtag.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeHashtag';
}

class TextEntityTypeCashtag extends TextEntityType {
  

  /// A cashtag text, beginning with "$" and consisting of capital english letters (i.e. "$USD")
  TextEntityTypeCashtag();

  /// Parse from a json
  TextEntityTypeCashtag.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeCashtag';
}

class TextEntityTypeBotCommand extends TextEntityType {
  

  /// A bot command, beginning with "/". This shouldn't be highlighted if there are no bots in the chat
  TextEntityTypeBotCommand();

  /// Parse from a json
  TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeBotCommand';
}

class TextEntityTypeUrl extends TextEntityType {
  

  /// An HTTP URL
  TextEntityTypeUrl();

  /// Parse from a json
  TextEntityTypeUrl.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeUrl';
}

class TextEntityTypeEmailAddress extends TextEntityType {
  

  /// An email address
  TextEntityTypeEmailAddress();

  /// Parse from a json
  TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeEmailAddress';
}

class TextEntityTypePhoneNumber extends TextEntityType {
  

  /// A phone number
  TextEntityTypePhoneNumber();

  /// Parse from a json
  TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypePhoneNumber';
}

class TextEntityTypeBankCardNumber extends TextEntityType {
  

  /// A bank card number. The getBankCardInfo method can be used to get information about the bank card
  TextEntityTypeBankCardNumber();

  /// Parse from a json
  TextEntityTypeBankCardNumber.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeBankCardNumber';
}

class TextEntityTypeBold extends TextEntityType {
  

  /// A bold text
  TextEntityTypeBold();

  /// Parse from a json
  TextEntityTypeBold.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeBold';
}

class TextEntityTypeItalic extends TextEntityType {
  

  /// An italic text
  TextEntityTypeItalic();

  /// Parse from a json
  TextEntityTypeItalic.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeItalic';
}

class TextEntityTypeUnderline extends TextEntityType {
  

  /// An underlined text
  TextEntityTypeUnderline();

  /// Parse from a json
  TextEntityTypeUnderline.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeUnderline';
}

class TextEntityTypeStrikethrough extends TextEntityType {
  

  /// A strikethrough text
  TextEntityTypeStrikethrough();

  /// Parse from a json
  TextEntityTypeStrikethrough.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeStrikethrough';
}

class TextEntityTypeCode extends TextEntityType {
  

  /// Text that must be formatted as if inside a code HTML tag
  TextEntityTypeCode();

  /// Parse from a json
  TextEntityTypeCode.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeCode';
}

class TextEntityTypePre extends TextEntityType {
  

  /// Text that must be formatted as if inside a pre HTML tag
  TextEntityTypePre();

  /// Parse from a json
  TextEntityTypePre.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypePre';
}

class TextEntityTypePreCode extends TextEntityType {
  String language;

  /// Text that must be formatted as if inside pre, and code HTML tags. 
  /// [language] Programming language of the code; as defined by the sender
  TextEntityTypePreCode({this.language});

  /// Parse from a json
  TextEntityTypePreCode.fromJson(Map<String, dynamic> json)  {
    this.language = json['language'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language": this.language,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypePreCode';
}

class TextEntityTypeTextUrl extends TextEntityType {
  String url;

  /// A text description shown instead of a raw URL. 
  /// [url] HTTP or tg:// URL to be opened when the link is clicked
  TextEntityTypeTextUrl({this.url});

  /// Parse from a json
  TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeTextUrl';
}

class TextEntityTypeMentionName extends TextEntityType {
  int userId;

  /// A text shows instead of a raw mention of the user (e.g., when the user has no username). 
  /// [userId] Identifier of the mentioned user
  TextEntityTypeMentionName({this.userId});

  /// Parse from a json
  TextEntityTypeMentionName.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'textEntityTypeMentionName';
}