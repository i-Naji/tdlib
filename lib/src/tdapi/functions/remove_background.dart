part of '../tdapi.dart';

class RemoveBackground extends TdFunction {
  String backgroundId;
  dynamic extra;

  /// Removes background from the list of installed backgrounds. 
  /// [backgroundId] The background identifier
  RemoveBackground({this.backgroundId});

  /// Parse from a json
  RemoveBackground.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background_id": this.backgroundId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}