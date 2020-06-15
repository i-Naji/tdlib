part of '../tdapi.dart';

class BankCardInfo extends TdObject {
  String title;
  List<BankCardActionOpenUrl> actions;
  dynamic extra;

  /// Information about a bank card. 
  /// [title] Title of the bank card description . 
  /// [actions] Actions that can be done with the bank card number
  BankCardInfo({this.title,
    this.actions});

  /// Parse from a json
  BankCardInfo.fromJson(Map<String, dynamic> json)  {
    this.title = json['title'];
    this.actions = List<BankCardActionOpenUrl>.from((json['actions'] ?? []).map((item) => BankCardActionOpenUrl.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "actions": this.actions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'bankCardInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}