part of '../tdapi.dart';

class MaskPoint extends TdObject {

  /// Part of the face, relative to which a mask is placed
  const MaskPoint();
  
  /// a MaskPoint return type can be :
  /// * [MaskPointForehead]
  /// * [MaskPointEyes]
  /// * [MaskPointMouth]
  /// * [MaskPointChin]
  factory MaskPoint.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MaskPointForehead.CONSTRUCTOR:
        return MaskPointForehead.fromJson(json);
      case MaskPointEyes.CONSTRUCTOR:
        return MaskPointEyes.fromJson(json);
      case MaskPointMouth.CONSTRUCTOR:
        return MaskPointMouth.fromJson(json);
      case MaskPointChin.CONSTRUCTOR:
        return MaskPointChin.fromJson(json);
      default:
        return const MaskPoint();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MaskPoint copyWith() => const MaskPoint();

  static const CONSTRUCTOR = 'maskPoint';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MaskPointForehead extends MaskPoint {

  /// The mask is placed relatively to the forehead
  const MaskPointForehead();
  
  /// Parse from a json
  factory MaskPointForehead.fromJson(Map<String, dynamic> json) => const MaskPointForehead();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MaskPointForehead copyWith() => const MaskPointForehead();

  static const CONSTRUCTOR = 'maskPointForehead';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MaskPointEyes extends MaskPoint {

  /// The mask is placed relatively to the eyes
  const MaskPointEyes();
  
  /// Parse from a json
  factory MaskPointEyes.fromJson(Map<String, dynamic> json) => const MaskPointEyes();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MaskPointEyes copyWith() => const MaskPointEyes();

  static const CONSTRUCTOR = 'maskPointEyes';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MaskPointMouth extends MaskPoint {

  /// The mask is placed relatively to the mouth
  const MaskPointMouth();
  
  /// Parse from a json
  factory MaskPointMouth.fromJson(Map<String, dynamic> json) => const MaskPointMouth();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MaskPointMouth copyWith() => const MaskPointMouth();

  static const CONSTRUCTOR = 'maskPointMouth';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MaskPointChin extends MaskPoint {

  /// The mask is placed relatively to the chin
  const MaskPointChin();
  
  /// Parse from a json
  factory MaskPointChin.fromJson(Map<String, dynamic> json) => const MaskPointChin();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MaskPointChin copyWith() => const MaskPointChin();

  static const CONSTRUCTOR = 'maskPointChin';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
