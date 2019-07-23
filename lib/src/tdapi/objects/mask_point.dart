part of '../tdapi.dart';

class MaskPoint implements TdObject {
  /// Part of the face, relative to which a mask should be placed
  MaskPoint();

  /// a MaskPoint return type can be :
  /// * MaskPointForehead
  /// * MaskPointEyes
  /// * MaskPointMouth
  /// * MaskPointChin
  factory MaskPoint.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case MaskPointForehead.CONSTRUCTOR:
        return MaskPointForehead.fromJson(json);
      case MaskPointEyes.CONSTRUCTOR:
        return MaskPointEyes.fromJson(json);
      case MaskPointMouth.CONSTRUCTOR:
        return MaskPointMouth.fromJson(json);
      case MaskPointChin.CONSTRUCTOR:
        return MaskPointChin.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "maskPoint";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointForehead implements MaskPoint {
  /// A mask should be placed relatively to the forehead.
  ///
  MaskPointForehead();

  /// Parse from a json
  MaskPointForehead.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "maskPointForehead";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointEyes implements MaskPoint {
  /// A mask should be placed relatively to the eyes.
  ///
  MaskPointEyes();

  /// Parse from a json
  MaskPointEyes.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "maskPointEyes";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointMouth implements MaskPoint {
  /// A mask should be placed relatively to the mouth.
  ///
  MaskPointMouth();

  /// Parse from a json
  MaskPointMouth.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "maskPointMouth";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MaskPointChin implements MaskPoint {
  /// A mask should be placed relatively to the chin.
  ///
  MaskPointChin();

  /// Parse from a json
  MaskPointChin.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "maskPointChin";

  @override
  String getConstructor() => CONSTRUCTOR;
}
