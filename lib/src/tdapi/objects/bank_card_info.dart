part of '../tdapi.dart';

class BankCardInfo extends TdObject {
  String title;
  List<List<BankCardActionOpenUrl>> actions;
  dynamic extra;

  /// Information about a bank card. 
  /// [title] Title of the bank card description . 
  /// [actions] Actions that can be done with the bank card number
  BankCardInfo({this.title,
    this.actions});

  /// Parse from a json
  BankCardInfo.fromJson(Map<String, dynamic> json)  {
    this.title = json['title'];
    this.actions = List<List<BankCardActionOpenUrl>>.from((json['actions'] ?? []).map((item) => List<BankCardActionOpenUrl>.from((item ?? []).map((innerItem) => BankCardActionOpenUrl.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "actions": this.actions.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'bankCardInfo';
}