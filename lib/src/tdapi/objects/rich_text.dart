part of '../tdapi.dart';

class RichText extends TdObject {
  

  /// Describes a text object inside an instant-view web page
  RichText();

  /// a RichText return type can be :
  /// * RichTextPlain
  /// * RichTextBold
  /// * RichTextItalic
  /// * RichTextUnderline
  /// * RichTextStrikethrough
  /// * RichTextFixed
  /// * RichTextUrl
  /// * RichTextEmailAddress
  /// * RichTextSubscript
  /// * RichTextSuperscript
  /// * RichTextMarked
  /// * RichTextPhoneNumber
  /// * RichTextIcon
  /// * RichTextReference
  /// * RichTextAnchor
  /// * RichTextAnchorLink
  /// * RichTexts
  factory RichText.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case RichTextPlain.CONSTRUCTOR:
        return RichTextPlain.fromJson(json);
      case RichTextBold.CONSTRUCTOR:
        return RichTextBold.fromJson(json);
      case RichTextItalic.CONSTRUCTOR:
        return RichTextItalic.fromJson(json);
      case RichTextUnderline.CONSTRUCTOR:
        return RichTextUnderline.fromJson(json);
      case RichTextStrikethrough.CONSTRUCTOR:
        return RichTextStrikethrough.fromJson(json);
      case RichTextFixed.CONSTRUCTOR:
        return RichTextFixed.fromJson(json);
      case RichTextUrl.CONSTRUCTOR:
        return RichTextUrl.fromJson(json);
      case RichTextEmailAddress.CONSTRUCTOR:
        return RichTextEmailAddress.fromJson(json);
      case RichTextSubscript.CONSTRUCTOR:
        return RichTextSubscript.fromJson(json);
      case RichTextSuperscript.CONSTRUCTOR:
        return RichTextSuperscript.fromJson(json);
      case RichTextMarked.CONSTRUCTOR:
        return RichTextMarked.fromJson(json);
      case RichTextPhoneNumber.CONSTRUCTOR:
        return RichTextPhoneNumber.fromJson(json);
      case RichTextIcon.CONSTRUCTOR:
        return RichTextIcon.fromJson(json);
      case RichTextReference.CONSTRUCTOR:
        return RichTextReference.fromJson(json);
      case RichTextAnchor.CONSTRUCTOR:
        return RichTextAnchor.fromJson(json);
      case RichTextAnchorLink.CONSTRUCTOR:
        return RichTextAnchorLink.fromJson(json);
      case RichTexts.CONSTRUCTOR:
        return RichTexts.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'richText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextPlain extends RichText {
  String text;

  /// A plain text. 
  /// [text] Text
  RichTextPlain({this.text});

  /// Parse from a json
  RichTextPlain.fromJson(Map<String, dynamic> json)  {
    this.text = json['text'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
    };
  }

  static const CONSTRUCTOR = 'richTextPlain';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextBold extends RichText {
  RichText text;

  /// A bold rich text. 
  /// [text] Text
  RichTextBold({this.text});

  /// Parse from a json
  RichTextBold.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextBold';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextItalic extends RichText {
  RichText text;

  /// An italicized rich text. 
  /// [text] Text
  RichTextItalic({this.text});

  /// Parse from a json
  RichTextItalic.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextItalic';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextUnderline extends RichText {
  RichText text;

  /// An underlined rich text. 
  /// [text] Text
  RichTextUnderline({this.text});

  /// Parse from a json
  RichTextUnderline.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextUnderline';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextStrikethrough extends RichText {
  RichText text;

  /// A strikethrough rich text. 
  /// [text] Text
  RichTextStrikethrough({this.text});

  /// Parse from a json
  RichTextStrikethrough.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextStrikethrough';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextFixed extends RichText {
  RichText text;

  /// A fixed-width rich text. 
  /// [text] Text
  RichTextFixed({this.text});

  /// Parse from a json
  RichTextFixed.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextFixed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextUrl extends RichText {
  RichText text;
  String url;
  bool isCached;

  /// A rich text URL link. 
  /// [text] Text . 
  /// [url] URL . 
  /// [isCached] True, if the URL has cached instant view server-side
  RichTextUrl({this.text,
    this.url,
    this.isCached});

  /// Parse from a json
  RichTextUrl.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.url = json['url'];
    this.isCached = json['is_cached'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "url": this.url,
      "is_cached": this.isCached,
    };
  }

  static const CONSTRUCTOR = 'richTextUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextEmailAddress extends RichText {
  RichText text;
  String emailAddress;

  /// A rich text email link. 
  /// [text] Text . 
  /// [emailAddress] Email address
  RichTextEmailAddress({this.text,
    this.emailAddress});

  /// Parse from a json
  RichTextEmailAddress.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.emailAddress = json['email_address'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "email_address": this.emailAddress,
    };
  }

  static const CONSTRUCTOR = 'richTextEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextSubscript extends RichText {
  RichText text;

  /// A subscript rich text. 
  /// [text] Text
  RichTextSubscript({this.text});

  /// Parse from a json
  RichTextSubscript.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextSubscript';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextSuperscript extends RichText {
  RichText text;

  /// A superscript rich text. 
  /// [text] Text
  RichTextSuperscript({this.text});

  /// Parse from a json
  RichTextSuperscript.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextSuperscript';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextMarked extends RichText {
  RichText text;

  /// A marked rich text. 
  /// [text] Text
  RichTextMarked({this.text});

  /// Parse from a json
  RichTextMarked.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
    };
  }

  static const CONSTRUCTOR = 'richTextMarked';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextPhoneNumber extends RichText {
  RichText text;
  String phoneNumber;

  /// A rich text phone number. 
  /// [text] Text . 
  /// [phoneNumber] Phone number
  RichTextPhoneNumber({this.text,
    this.phoneNumber});

  /// Parse from a json
  RichTextPhoneNumber.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.phoneNumber = json['phone_number'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "phone_number": this.phoneNumber,
    };
  }

  static const CONSTRUCTOR = 'richTextPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextIcon extends RichText {
  Document document;
  int width;
  int height;

  /// A small image inside the text. 
  /// [document] The image represented as a document. The image can be in GIF, JPEG or PNG format. 
  /// [width] Width of a bounding box in which the image should be shown; 0 if unknown. 
  /// [height] Height of a bounding box in which the image should be shown; 0 if unknown
  RichTextIcon({this.document,
    this.width,
    this.height});

  /// Parse from a json
  RichTextIcon.fromJson(Map<String, dynamic> json)  {
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document == null ? null : this.document.toJson(),
      "width": this.width,
      "height": this.height,
    };
  }

  static const CONSTRUCTOR = 'richTextIcon';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextReference extends RichText {
  RichText text;
  RichText referenceText;
  String url;

  /// A rich text reference of a text on the same web page. 
  /// [text] The text . 
  /// [referenceText] The text to show on click . 
  /// [url] An HTTP URL, opening the reference
  RichTextReference({this.text,
    this.referenceText,
    this.url});

  /// Parse from a json
  RichTextReference.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.referenceText = RichText.fromJson(json['reference_text'] ?? <String, dynamic>{});
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "reference_text": this.referenceText == null ? null : this.referenceText.toJson(),
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'richTextReference';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextAnchor extends RichText {
  String name;

  /// An anchor. 
  /// [name] Anchor name
  RichTextAnchor({this.name});

  /// Parse from a json
  RichTextAnchor.fromJson(Map<String, dynamic> json)  {
    this.name = json['name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
    };
  }

  static const CONSTRUCTOR = 'richTextAnchor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextAnchorLink extends RichText {
  RichText text;
  String name;
  String url;

  /// A link to an anchor on the same web page. 
  /// [text] The link text . 
  /// [name] The anchor name. If the name is empty, the link should bring back to top . 
  /// [url] An HTTP URL, opening the anchor
  RichTextAnchorLink({this.text,
    this.name,
    this.url});

  /// Parse from a json
  RichTextAnchorLink.fromJson(Map<String, dynamic> json)  {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.name = json['name'];
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "name": this.name,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'richTextAnchorLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTexts extends RichText {
  List<RichText> texts;

  /// A concatenation of rich texts. 
  /// [texts] Texts
  RichTexts({this.texts});

  /// Parse from a json
  RichTexts.fromJson(Map<String, dynamic> json)  {
    this.texts = List<RichText>.from((json['texts'] ?? []).map((item) => RichText.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "texts": this.texts.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'richTexts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}