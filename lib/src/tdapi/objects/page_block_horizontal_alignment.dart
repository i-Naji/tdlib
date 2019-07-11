part of '../tdapi.dart';

class PageBlockHorizontalAlignment implements TLObject {
  /// Describes a horizontal alignment of a table cell content
  PageBlockHorizontalAlignment();

  /// a PageBlockHorizontalAlignment return type can be :
  /// * PageBlockHorizontalAlignmentLeft
  /// * PageBlockHorizontalAlignmentCenter
  /// * PageBlockHorizontalAlignmentRight
  factory PageBlockHorizontalAlignment.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case PageBlockHorizontalAlignmentLeft.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentLeft.fromJson(json);
      case PageBlockHorizontalAlignmentCenter.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentCenter.fromJson(json);
      case PageBlockHorizontalAlignmentRight.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentRight.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "pageBlockHorizontalAlignment";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockHorizontalAlignmentLeft implements PageBlockHorizontalAlignment {
  /// The content should be left-aligned.
  ///
  PageBlockHorizontalAlignmentLeft();

  /// Parse from a json
  PageBlockHorizontalAlignmentLeft.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pageBlockHorizontalAlignmentLeft";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockHorizontalAlignmentCenter
    implements PageBlockHorizontalAlignment {
  /// The content should be center-aligned.
  ///
  PageBlockHorizontalAlignmentCenter();

  /// Parse from a json
  PageBlockHorizontalAlignmentCenter.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pageBlockHorizontalAlignmentCenter";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockHorizontalAlignmentRight
    implements PageBlockHorizontalAlignment {
  /// The content should be right-aligned.
  ///
  PageBlockHorizontalAlignmentRight();

  /// Parse from a json
  PageBlockHorizontalAlignmentRight.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pageBlockHorizontalAlignmentRight";

  @override
  String getConstructor() => CONSTRUCTOR;
}
