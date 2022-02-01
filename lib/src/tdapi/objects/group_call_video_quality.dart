part of '../tdapi.dart';

class GroupCallVideoQuality extends TdObject {

  /// Describes the quality of a group call video
  const GroupCallVideoQuality();
  
  /// a GroupCallVideoQuality return type can be :
  /// * [GroupCallVideoQualityThumbnail]
  /// * [GroupCallVideoQualityMedium]
  /// * [GroupCallVideoQualityFull]
  factory GroupCallVideoQuality.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case GroupCallVideoQualityThumbnail.CONSTRUCTOR:
        return GroupCallVideoQualityThumbnail.fromJson(json);
      case GroupCallVideoQualityMedium.CONSTRUCTOR:
        return GroupCallVideoQualityMedium.fromJson(json);
      case GroupCallVideoQualityFull.CONSTRUCTOR:
        return GroupCallVideoQualityFull.fromJson(json);
      default:
        return const GroupCallVideoQuality();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  GroupCallVideoQuality copyWith() => const GroupCallVideoQuality();

  static const CONSTRUCTOR = 'groupCallVideoQuality';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {

  /// The worst available video quality
  const GroupCallVideoQualityThumbnail();
  
  /// Parse from a json
  factory GroupCallVideoQualityThumbnail.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityThumbnail();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  GroupCallVideoQualityThumbnail copyWith() => const GroupCallVideoQualityThumbnail();

  static const CONSTRUCTOR = 'groupCallVideoQualityThumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GroupCallVideoQualityMedium extends GroupCallVideoQuality {

  /// The medium video quality
  const GroupCallVideoQualityMedium();
  
  /// Parse from a json
  factory GroupCallVideoQualityMedium.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityMedium();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  GroupCallVideoQualityMedium copyWith() => const GroupCallVideoQualityMedium();

  static const CONSTRUCTOR = 'groupCallVideoQualityMedium';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class GroupCallVideoQualityFull extends GroupCallVideoQuality {

  /// The best available video quality
  const GroupCallVideoQualityFull();
  
  /// Parse from a json
  factory GroupCallVideoQualityFull.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityFull();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  GroupCallVideoQualityFull copyWith() => const GroupCallVideoQualityFull();

  static const CONSTRUCTOR = 'groupCallVideoQualityFull';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
