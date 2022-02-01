part of '../tdapi.dart';

class BankCardActionOpenUrl extends TdObject {

  /// Describes an action associated with a bank card number
  const BankCardActionOpenUrl({
    required this.text,
    required this.url,
  });
  
  /// [text] Action text 
  final String text;

  /// [url] The URL to be opened
  final String url;
  
  /// Parse from a json
  factory BankCardActionOpenUrl.fromJson(Map<String, dynamic> json) => BankCardActionOpenUrl(
    text: json['text'],
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "url": url,
    };
  }
  
  BankCardActionOpenUrl copyWith({
    String? text,
    String? url,
  }) => BankCardActionOpenUrl(
    text: text ?? this.text,
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'bankCardActionOpenUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
