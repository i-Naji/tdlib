part of '../tdapi.dart';

class InputIdentityDocument extends TdObject {
  String number;
  Date expiryDate;
  InputFile frontSide;
  InputFile reverseSide;
  InputFile selfie;
  List<InputFile> translation;

  /// An identity document to be saved to Telegram Passport. 
  /// [number] Document number; 1-24 characters . 
  /// [expiryDate] Document expiry date, if available . 
  /// [frontSide] Front side of the document. 
  /// [reverseSide] Reverse side of the document; only for driver license and identity card. 
  /// [selfie] Selfie with the document, if available . 
  /// [translation] List of files containing a certified English translation of the document
  InputIdentityDocument({this.number,
    this.expiryDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation});

  /// Parse from a json
  InputIdentityDocument.fromJson(Map<String, dynamic> json)  {
    this.number = json['number'];
    this.expiryDate = Date.fromJson(json['expiry_date'] ?? <String, dynamic>{});
    this.frontSide = InputFile.fromJson(json['front_side'] ?? <String, dynamic>{});
    this.reverseSide = InputFile.fromJson(json['reverse_side'] ?? <String, dynamic>{});
    this.selfie = InputFile.fromJson(json['selfie'] ?? <String, dynamic>{});
    this.translation = List<InputFile>.from((json['translation'] ?? []).map((item) => InputFile.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "number": this.number,
      "expiry_date": this.expiryDate == null ? null : this.expiryDate.toJson(),
      "front_side": this.frontSide == null ? null : this.frontSide.toJson(),
      "reverse_side": this.reverseSide == null ? null : this.reverseSide.toJson(),
      "selfie": this.selfie == null ? null : this.selfie.toJson(),
      "translation": this.translation.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'inputIdentityDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}