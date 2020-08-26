part of '../tdapi.dart';

class CreateChatFilter extends TdFunction {
  ChatFilter filter;
  dynamic extra;

  /// Creates new chat filter. Returns information about the created chat filter. 
  /// [filter] Chat filter
  CreateChatFilter({this.filter});

  /// Parse from a json
  CreateChatFilter.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createChatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}