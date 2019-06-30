part of '../tdapi.dart';

class RichText implements TLObject {
  /// Describes a text object inside an instant-view web page
  RichText();

  /// a RichText return type can be :
  /// * RichTextUrl
  /// * RichTexts
  /// * RichTextSubscript
  /// * RichTextPhoneNumber
  /// * RichTextBold
  /// * RichTextFixed
  /// * RichTextIcon
  /// * RichTextUnderline
  /// * RichTextEmailAddress
  /// * RichTextAnchor
  /// * RichTextMarked
  /// * RichTextPlain
  /// * RichTextStrikethrough
  /// * RichTextSuperscript
  /// * RichTextItalic
  factory RichText.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case RichTextUrl.CONSTRUCTOR:
        return RichTextUrl.fromJson(json);
      case RichTexts.CONSTRUCTOR:
        return RichTexts.fromJson(json);
      case RichTextSubscript.CONSTRUCTOR:
        return RichTextSubscript.fromJson(json);
      case RichTextPhoneNumber.CONSTRUCTOR:
        return RichTextPhoneNumber.fromJson(json);
      case RichTextBold.CONSTRUCTOR:
        return RichTextBold.fromJson(json);
      case RichTextFixed.CONSTRUCTOR:
        return RichTextFixed.fromJson(json);
      case RichTextIcon.CONSTRUCTOR:
        return RichTextIcon.fromJson(json);
      case RichTextUnderline.CONSTRUCTOR:
        return RichTextUnderline.fromJson(json);
      case RichTextEmailAddress.CONSTRUCTOR:
        return RichTextEmailAddress.fromJson(json);
      case RichTextAnchor.CONSTRUCTOR:
        return RichTextAnchor.fromJson(json);
      case RichTextMarked.CONSTRUCTOR:
        return RichTextMarked.fromJson(json);
      case RichTextPlain.CONSTRUCTOR:
        return RichTextPlain.fromJson(json);
      case RichTextStrikethrough.CONSTRUCTOR:
        return RichTextStrikethrough.fromJson(json);
      case RichTextSuperscript.CONSTRUCTOR:
        return RichTextSuperscript.fromJson(json);
      case RichTextItalic.CONSTRUCTOR:
        return RichTextItalic.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'richText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextPlain implements RichText {
  String text;

  /// A plain text.
  ///[text] Text
  RichTextPlain({this.text});

  /// Parse from a json
  RichTextPlain.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text};
  }

  static const String CONSTRUCTOR = 'richTextPlain';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextBold implements RichText {
  var text;

  /// A bold rich text.
  ///[text] Text
  RichTextBold({this.text});

  /// Parse from a json
  RichTextBold.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'richTextBold';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextItalic implements RichText {
  var text;

  /// An italicized rich text.
  ///[text] Text
  RichTextItalic({this.text});

  /// Parse from a json
  RichTextItalic.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'richTextItalic';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextUnderline implements RichText {
  var text;

  /// An underlined rich text.
  ///[text] Text
  RichTextUnderline({this.text});

  /// Parse from a json
  RichTextUnderline.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'richTextUnderline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextStrikethrough implements RichText {
  var text;

  /// A strike-through rich text.
  ///[text] Text
  RichTextStrikethrough({this.text});

  /// Parse from a json
  RichTextStrikethrough.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'richTextStrikethrough';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextFixed implements RichText {
  var text;

  /// A fixed-width rich text.
  ///[text] Text
  RichTextFixed({this.text});

  /// Parse from a json
  RichTextFixed.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'richTextFixed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextUrl implements RichText {
  var text;
  String url;

  /// A rich text URL link.
  ///[text] Text .
  /// [url] URL
  RichTextUrl({this.text, this.url});

  /// Parse from a json
  RichTextUrl.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson(), 'url': this.url};
  }

  static const String CONSTRUCTOR = 'richTextUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextEmailAddress implements RichText {
  var text;
  String emailAddress;

  /// A rich text email link.
  ///[text] Text .
  /// [emailAddress] Email address
  RichTextEmailAddress({this.text, this.emailAddress});

  /// Parse from a json
  RichTextEmailAddress.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.emailAddress = json['email_address'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text.toJson(),
      'email_address': this.emailAddress
    };
  }

  static const String CONSTRUCTOR = 'richTextEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextSubscript implements RichText {
  var text;

  /// A subscript rich text.
  ///[text] Text
  RichTextSubscript({this.text});

  /// Parse from a json
  RichTextSubscript.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'richTextSubscript';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextSuperscript implements RichText {
  var text;

  /// A superscript rich text.
  ///[text] Text
  RichTextSuperscript({this.text});

  /// Parse from a json
  RichTextSuperscript.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'richTextSuperscript';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextMarked implements RichText {
  var text;

  /// A marked rich text.
  ///[text] Text
  RichTextMarked({this.text});

  /// Parse from a json
  RichTextMarked.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text.toJson()};
  }

  static const String CONSTRUCTOR = 'richTextMarked';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextPhoneNumber implements RichText {
  var text;
  String phoneNumber;

  /// A rich text phone number.
  ///[text] Text .
  /// [phoneNumber] Phone number
  RichTextPhoneNumber({this.text, this.phoneNumber});

  /// Parse from a json
  RichTextPhoneNumber.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.phoneNumber = json['phone_number'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text.toJson(),
      'phone_number': this.phoneNumber
    };
  }

  static const String CONSTRUCTOR = 'richTextPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextIcon implements RichText {
  Document document;
  int width;
  int height;

  /// A small image inside the text.
  ///[document] The image represented as a document. The image can be in GIF, JPEG or PNG format.
  /// [width] Width of a bounding box in which the image should be shown, 0 if unknown.
  /// [height] Height of a bounding box in which the image should be shown, 0 if unknown
  RichTextIcon({this.document, this.width, this.height});

  /// Parse from a json
  RichTextIcon.fromJson(Map<String, dynamic> json) {
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'document': this.document.toJson(),
      'width': this.width,
      'height': this.height
    };
  }

  static const String CONSTRUCTOR = 'richTextIcon';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextAnchor implements RichText {
  var text;
  String name;

  /// A rich text anchor.
  ///[text] Text .
  /// [name] Anchor name
  RichTextAnchor({this.text, this.name});

  /// Parse from a json
  RichTextAnchor.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.name = json['name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text.toJson(),
      'name': this.name
    };
  }

  static const String CONSTRUCTOR = 'richTextAnchor';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTexts implements RichText {
  List texts;

  /// A concatenation of rich texts.
  ///[texts] Texts
  RichTexts({this.texts});

  /// Parse from a json
  RichTexts.fromJson(Map<String, dynamic> json) {
    this.texts = (json['texts'] ?? [])
        .map((listValue) => RichText.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'texts': this.texts.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'richTexts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
