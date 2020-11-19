part of '../tdapi.dart';

class CreateChatFilter extends TdFunction {
  /// Creates new chat filter. Returns information about the created chat filter
  CreateChatFilter({this.filter});

  /// [filter] Chat filter
  ChatFilter filter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CreateChatFilter.fromJson(Map<String, dynamic> json);

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
