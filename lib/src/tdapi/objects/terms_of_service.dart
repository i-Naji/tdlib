part of '../tdapi.dart';

class TermsOfService extends TdObject {

  /// Contains Telegram terms of service
  const TermsOfService({
    required this.text,
    required this.minUserAge,
    required this.showPopup,
  });
  
  /// [text] Text of the terms of service 
  final FormattedText text;

  /// [minUserAge] The minimum age of a user to be able to accept the terms; 0 if any 
  final int minUserAge;

  /// [showPopup] True, if a blocking popup with terms of service must be shown to the user
  final bool showPopup;
  
  /// Parse from a json
  factory TermsOfService.fromJson(Map<String, dynamic> json) => TermsOfService(
    text: FormattedText.fromJson(json['text']),
    minUserAge: json['min_user_age'],
    showPopup: json['show_popup'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "min_user_age": minUserAge,
      "show_popup": showPopup,
    };
  }
  
  TermsOfService copyWith({
    FormattedText? text,
    int? minUserAge,
    bool? showPopup,
  }) => TermsOfService(
    text: text ?? this.text,
    minUserAge: minUserAge ?? this.minUserAge,
    showPopup: showPopup ?? this.showPopup,
  );

  static const CONSTRUCTOR = 'termsOfService';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
