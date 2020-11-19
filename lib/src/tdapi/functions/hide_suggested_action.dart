part of '../tdapi.dart';

class HideSuggestedAction extends TdFunction {
  /// Hides a suggested action
  HideSuggestedAction({this.action});

  /// [action] Suggested action to hide
  SuggestedAction action;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  HideSuggestedAction.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "action": this.action == null ? null : this.action.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'hideSuggestedAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
