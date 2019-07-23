part of '../tdapi.dart';

class InputIdentityDocument implements TdObject {
  String number;
  Date expiryDate;
  var frontSide;
  var reverseSide;
  var selfie;
  List translation;

  /// An identity document to be saved to Telegram Passport.
  ///[number] Document number; 1-24 characters .
  /// [expiryDate] Document expiry date, if available .
  /// [frontSide] Front side of the document.
  /// [reverseSide] Reverse side of the document; only for driver license and identity card .
  /// [selfie] Selfie with the document, if available .
  /// [translation] List of files containing a certified English translation of the document
  InputIdentityDocument(
      {this.number,
      this.expiryDate,
      this.frontSide,
      this.reverseSide,
      this.selfie,
      this.translation});

  /// Parse from a json
  InputIdentityDocument.fromJson(Map<String, dynamic> json) {
    this.number = json['number'];
    this.expiryDate = Date.fromJson(json['expiry_date'] ?? <String, dynamic>{});
    this.frontSide =
        InputFile.fromJson(json['front_side'] ?? <String, dynamic>{});
    this.reverseSide =
        InputFile.fromJson(json['reverse_side'] ?? <String, dynamic>{});
    this.selfie = InputFile.fromJson(json['selfie'] ?? <String, dynamic>{});
    this.translation = (json['translation'] ?? [])
        .map((listValue) => InputFile.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "number": this.number,
      "expiry_date": this.expiryDate.toJson(),
      "front_side": this.frontSide.toJson(),
      "reverse_side": this.reverseSide.toJson(),
      "selfie": this.selfie.toJson(),
      "translation":
          this.translation.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "inputIdentityDocument";

  @override
  String getConstructor() => CONSTRUCTOR;
}
