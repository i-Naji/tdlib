part of '../tdapi.dart';

class PageBlockHorizontalAlignment extends TdObject {

  /// Describes a horizontal alignment of a table cell content
  const PageBlockHorizontalAlignment();
  
  /// a PageBlockHorizontalAlignment return type can be :
  /// * [PageBlockHorizontalAlignmentLeft]
  /// * [PageBlockHorizontalAlignmentCenter]
  /// * [PageBlockHorizontalAlignmentRight]
  factory PageBlockHorizontalAlignment.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PageBlockHorizontalAlignmentLeft.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentLeft.fromJson(json);
      case PageBlockHorizontalAlignmentCenter.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentCenter.fromJson(json);
      case PageBlockHorizontalAlignmentRight.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentRight.fromJson(json);
      default:
        return const PageBlockHorizontalAlignment();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PageBlockHorizontalAlignment copyWith() => const PageBlockHorizontalAlignment();

  static const CONSTRUCTOR = 'pageBlockHorizontalAlignment';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockHorizontalAlignmentLeft extends PageBlockHorizontalAlignment {

  /// The content must be left-aligned
  const PageBlockHorizontalAlignmentLeft();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentLeft.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentLeft();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PageBlockHorizontalAlignmentLeft copyWith() => const PageBlockHorizontalAlignmentLeft();

  static const CONSTRUCTOR = 'pageBlockHorizontalAlignmentLeft';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockHorizontalAlignmentCenter extends PageBlockHorizontalAlignment {

  /// The content must be center-aligned
  const PageBlockHorizontalAlignmentCenter();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentCenter.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentCenter();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PageBlockHorizontalAlignmentCenter copyWith() => const PageBlockHorizontalAlignmentCenter();

  static const CONSTRUCTOR = 'pageBlockHorizontalAlignmentCenter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PageBlockHorizontalAlignmentRight extends PageBlockHorizontalAlignment {

  /// The content must be right-aligned
  const PageBlockHorizontalAlignmentRight();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentRight.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentRight();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PageBlockHorizontalAlignmentRight copyWith() => const PageBlockHorizontalAlignmentRight();

  static const CONSTRUCTOR = 'pageBlockHorizontalAlignmentRight';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
