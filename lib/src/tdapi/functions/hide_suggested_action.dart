part of '../tdapi.dart';

class HideSuggestedAction extends TdFunction {
  SuggestedAction action;
  dynamic extra;

  /// Hides a suggested action. 
  /// [action] Suggested action to hide
  HideSuggestedAction({this.action});

  /// Parse from a json
  HideSuggestedAction.fromJson(Map<String, dynamic> json) ;

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