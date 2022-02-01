part of '../tdapi.dart';

class PageBlockCaption extends TdObject {

  /// Contains a caption of an instant view web page block, consisting of a text and a trailing credit
  const PageBlockCaption({
    required this.text,
    required this.credit,
  });
  
  /// [text] Content of the caption 
  final RichText text;

  /// [credit] Block credit (like HTML tag <cite>)
  final RichText credit;
  
  /// Parse from a json
  factory PageBlockCaption.fromJson(Map<String, dynamic> json) => PageBlockCaption(
    text: RichText.fromJson(json['text']),
    credit: RichText.fromJson(json['credit']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "credit": credit.toJson(),
    };
  }
  
  PageBlockCaption copyWith({
    RichText? text,
    RichText? credit,
  }) => PageBlockCaption(
    text: text ?? this.text,
    credit: credit ?? this.credit,
  );

  static const CONSTRUCTOR = 'pageBlockCaption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
