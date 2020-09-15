part of '../tdapi.dart';

class GetChatFilterDefaultIconName extends TdFunction {

  /// Returns default icon name for a filter. This is an offline method. Can be called before authorization. Can be called synchronously
  GetChatFilterDefaultIconName({this.filter});

  /// [filter] Chat filter
  ChatFilter filter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatFilterDefaultIconName.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatFilterDefaultIconName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}