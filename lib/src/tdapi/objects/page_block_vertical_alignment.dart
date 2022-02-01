part of '../tdapi.dart';

class PageBlockVerticalAlignment extends TdObject {

  /// Describes a Vertical alignment of a table cell content
  const PageBlockVerticalAlignment();
  
  /// a PageBlockVerticalAlignment return type can be :
  /// * [PageBlockVerticalAlignmentTop]
  /// * [PageBlockVerticalAlignmentMiddle]
  /// * [PageBlockVerticalAlignmentBottom]
  factory PageBlockVerticalAlignment.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PageBlockVerticalAlignmentTop.CONSTRUCTOR:
        return PageBlockVerticalAlignmentTop.fromJson(json);
      case PageBlockVerticalAlignmentMiddle.CONSTRUCTOR:
        return PageBlockVerticalAlignmentMiddle.fromJson(json);
      case PageBlockVerticalAlignmentBottom.CONSTRUCTOR:
        return PageBlockVerticalAlignmentBottom.fromJson(json);
      default:
        return const PageBlockVerticalAlignment();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PageBlockVerticalAlignment copyWith() => const PageBlockVerticalAlignment();

  static const CONSTRUCTOR = 'pageBlockVerticalAlignment';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {

  /// The content must be top-aligned
  const PageBlockVerticalAlignmentTop();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentTop();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PageBlockVerticalAlignmentTop copyWith() => const PageBlockVerticalAlignmentTop();

  static const CONSTRUCTOR = 'pageBlockVerticalAlignmentTop';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {

  /// The content must be middle-aligned
  const PageBlockVerticalAlignmentMiddle();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentMiddle();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PageBlockVerticalAlignmentMiddle copyWith() => const PageBlockVerticalAlignmentMiddle();

  static const CONSTRUCTOR = 'pageBlockVerticalAlignmentMiddle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {

  /// The content must be bottom-aligned
  const PageBlockVerticalAlignmentBottom();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentBottom();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PageBlockVerticalAlignmentBottom copyWith() => const PageBlockVerticalAlignmentBottom();

  static const CONSTRUCTOR = 'pageBlockVerticalAlignmentBottom';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
