part of '../tdapi.dart';

class PageBlockVerticalAlignment implements TdObject {
  /// Describes a Vertical alignment of a table cell content
  PageBlockVerticalAlignment();

  /// a PageBlockVerticalAlignment return type can be :
  /// * PageBlockVerticalAlignmentTop
  /// * PageBlockVerticalAlignmentMiddle
  /// * PageBlockVerticalAlignmentBottom
  factory PageBlockVerticalAlignment.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case PageBlockVerticalAlignmentTop.CONSTRUCTOR:
        return PageBlockVerticalAlignmentTop.fromJson(json);
      case PageBlockVerticalAlignmentMiddle.CONSTRUCTOR:
        return PageBlockVerticalAlignmentMiddle.fromJson(json);
      case PageBlockVerticalAlignmentBottom.CONSTRUCTOR:
        return PageBlockVerticalAlignmentBottom.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "pageBlockVerticalAlignment";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVerticalAlignmentTop implements PageBlockVerticalAlignment {
  /// The content should be top-aligned.
  ///
  PageBlockVerticalAlignmentTop();

  /// Parse from a json
  PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pageBlockVerticalAlignmentTop";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVerticalAlignmentMiddle implements PageBlockVerticalAlignment {
  /// The content should be middle-aligned.
  ///
  PageBlockVerticalAlignmentMiddle();

  /// Parse from a json
  PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pageBlockVerticalAlignmentMiddle";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVerticalAlignmentBottom implements PageBlockVerticalAlignment {
  /// The content should be bottom-aligned.
  ///
  PageBlockVerticalAlignmentBottom();

  /// Parse from a json
  PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pageBlockVerticalAlignmentBottom";

  @override
  String getConstructor() => CONSTRUCTOR;
}
