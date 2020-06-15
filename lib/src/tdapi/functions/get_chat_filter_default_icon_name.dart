part of '../tdapi.dart';

class GetChatFilterDefaultIconName extends TdFunction {
  ChatFilter filter;
  dynamic extra;

  /// Returns default icon name for a filter. This is an offline method. Can be called before authorization. Can be called synchronously. 
  /// [filter] Chat filter
  GetChatFilterDefaultIconName({this.filter});

  /// Parse from a json
  GetChatFilterDefaultIconName.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "filter": this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatFilterDefaultIconName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}