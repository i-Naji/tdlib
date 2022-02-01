part of '../tdapi.dart';

class BankCardInfo extends TdObject {

  /// Information about a bank card
  const BankCardInfo({
    required this.title,
    required this.actions,
    this.extra,
    this.clientId,
  });
  
  /// [title] Title of the bank card description 
  final String title;

  /// [actions] Actions that can be done with the bank card number
  final List<BankCardActionOpenUrl> actions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BankCardInfo.fromJson(Map<String, dynamic> json) => BankCardInfo(
    title: json['title'],
    actions: List<BankCardActionOpenUrl>.from((json['actions'] ?? []).map((item) => BankCardActionOpenUrl.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "actions": actions.map((i) => i.toJson()).toList(),
    };
  }
  
  BankCardInfo copyWith({
    String? title,
    List<BankCardActionOpenUrl>? actions,
    dynamic extra,
    int? clientId,
  }) => BankCardInfo(
    title: title ?? this.title,
    actions: actions ?? this.actions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'bankCardInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
