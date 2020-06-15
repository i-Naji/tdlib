part of '../tdapi.dart';

class BankCardActionOpenUrl extends TdObject {
  String text;
  String url;

  /// Describes an action associated with a bank card number. 
  /// [text] Action text . 
  /// [url] The URL to be opened
  BankCardActionOpenUrl({this.text,
    this.url});

  /// Parse from a json
  BankCardActionOpenUrl.fromJson(Map<String, dynamic> json)  {
    this.text = json['text'];
    this.url = json['url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'bankCardActionOpenUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}