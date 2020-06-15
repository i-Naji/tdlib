part of '../tdapi.dart';

class SearchBackground extends TdFunction {
  String name;
  dynamic extra;

  /// Searches for a background by its name. 
  /// [name] The name of the background
  SearchBackground({this.name});

  /// Parse from a json
  SearchBackground.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}