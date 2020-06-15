part of '../tdapi.dart';

class GetBackgroundUrl extends TdFunction {
  String name;
  BackgroundType type;
  dynamic extra;

  /// Constructs a persistent HTTP URL for a background. 
  /// [name] Background name . 
  /// [type] Background type
  GetBackgroundUrl({this.name,
    this.type});

  /// Parse from a json
  GetBackgroundUrl.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBackgroundUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}