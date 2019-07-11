part of '../tdapi.dart';

class EncryptedPassportElement implements TLObject {
  var type;
  String data;
  DatedFile frontSide;
  DatedFile reverseSide;
  DatedFile selfie;
  List<DatedFile> translation;
  List<DatedFile> files;
  String value;
  String hash;

  /// Contains information about an encrypted Telegram Passport element; for bots only.
  ///[type] Type of Telegram Passport element .
  /// [data] Encrypted JSON-encoded data about the user .
  /// [frontSide] The front side of an identity document .
  /// [reverseSide] The reverse side of an identity document; may be null .
  /// [selfie] Selfie with the document; may be null .
  /// [translation] List of files containing a certified English translation of the document .
  /// [files] List of attached files .
  /// [value] Unencrypted data, phone number or email address .
  /// [hash] Hash of the entire element
  EncryptedPassportElement(
      {this.type,
      this.data,
      this.frontSide,
      this.reverseSide,
      this.selfie,
      this.translation,
      this.files,
      this.value,
      this.hash});

  /// Parse from a json
  EncryptedPassportElement.fromJson(Map<String, dynamic> json) {
    this.type =
        PassportElementType.fromJson(json['type'] ?? <String, dynamic>{});
    this.data = json['data'];
    this.frontSide =
        DatedFile.fromJson(json['front_side'] ?? <String, dynamic>{});
    this.reverseSide =
        DatedFile.fromJson(json['reverse_side'] ?? <String, dynamic>{});
    this.selfie = DatedFile.fromJson(json['selfie'] ?? <String, dynamic>{});
    this.translation = List<DatedFile>.from((json['translation'] ?? [])
        .map((listValue) => DatedFile.fromJson(listValue))
        .toList());
    this.files = List<DatedFile>.from((json['files'] ?? [])
        .map((listValue) => DatedFile.fromJson(listValue))
        .toList());
    this.value = json['value'];
    this.hash = json['hash'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "data": this.data,
      "front_side": this.frontSide.toJson(),
      "reverse_side": this.reverseSide.toJson(),
      "selfie": this.selfie.toJson(),
      "translation":
          this.translation.map((listItem) => listItem.toJson()).toList(),
      "files": this.files.map((listItem) => listItem.toJson()).toList(),
      "value": this.value,
      "hash": this.hash
    };
  }

  static const String CONSTRUCTOR = "encryptedPassportElement";

  @override
  String getConstructor() => CONSTRUCTOR;
}
