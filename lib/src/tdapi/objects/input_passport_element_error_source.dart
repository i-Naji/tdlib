part of '../tdapi.dart';

class InputPassportElementErrorSource implements TLObject {
  /// Contains the description of an error in a Telegram Passport element; for bots only
  InputPassportElementErrorSource();

  /// a InputPassportElementErrorSource return type can be :
  /// * InputPassportElementErrorSourceUnspecified
  /// * InputPassportElementErrorSourceDataField
  /// * InputPassportElementErrorSourceFrontSide
  /// * InputPassportElementErrorSourceReverseSide
  /// * InputPassportElementErrorSourceSelfie
  /// * InputPassportElementErrorSourceTranslationFile
  /// * InputPassportElementErrorSourceTranslationFiles
  /// * InputPassportElementErrorSourceFile
  /// * InputPassportElementErrorSourceFiles
  factory InputPassportElementErrorSource.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case InputPassportElementErrorSourceUnspecified.CONSTRUCTOR:
        return InputPassportElementErrorSourceUnspecified.fromJson(json);
      case InputPassportElementErrorSourceDataField.CONSTRUCTOR:
        return InputPassportElementErrorSourceDataField.fromJson(json);
      case InputPassportElementErrorSourceFrontSide.CONSTRUCTOR:
        return InputPassportElementErrorSourceFrontSide.fromJson(json);
      case InputPassportElementErrorSourceReverseSide.CONSTRUCTOR:
        return InputPassportElementErrorSourceReverseSide.fromJson(json);
      case InputPassportElementErrorSourceSelfie.CONSTRUCTOR:
        return InputPassportElementErrorSourceSelfie.fromJson(json);
      case InputPassportElementErrorSourceTranslationFile.CONSTRUCTOR:
        return InputPassportElementErrorSourceTranslationFile.fromJson(json);
      case InputPassportElementErrorSourceTranslationFiles.CONSTRUCTOR:
        return InputPassportElementErrorSourceTranslationFiles.fromJson(json);
      case InputPassportElementErrorSourceFile.CONSTRUCTOR:
        return InputPassportElementErrorSourceFile.fromJson(json);
      case InputPassportElementErrorSourceFiles.CONSTRUCTOR:
        return InputPassportElementErrorSourceFiles.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "inputPassportElementErrorSource";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceUnspecified
    implements InputPassportElementErrorSource {
  String elementHash;

  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added.
  ///[elementHash] Current hash of the entire element
  InputPassportElementErrorSourceUnspecified({this.elementHash});

  /// Parse from a json
  InputPassportElementErrorSourceUnspecified.fromJson(
      Map<String, dynamic> json) {
    this.elementHash = json['element_hash'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "element_hash": this.elementHash};
  }

  static const String CONSTRUCTOR =
      "inputPassportElementErrorSourceUnspecified";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceDataField
    implements InputPassportElementErrorSource {
  String fieldName;
  String dataHash;

  /// A data field contains an error. The error is considered resolved when the field's value changes.
  ///[fieldName] Field name .
  /// [dataHash] Current data hash
  InputPassportElementErrorSourceDataField({this.fieldName, this.dataHash});

  /// Parse from a json
  InputPassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) {
    this.fieldName = json['field_name'];
    this.dataHash = json['data_hash'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "field_name": this.fieldName,
      "data_hash": this.dataHash
    };
  }

  static const String CONSTRUCTOR = "inputPassportElementErrorSourceDataField";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceFrontSide
    implements InputPassportElementErrorSource {
  String fileHash;

  /// The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes.
  ///[fileHash] Current hash of the file containing the front side
  InputPassportElementErrorSourceFrontSide({this.fileHash});

  /// Parse from a json
  InputPassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) {
    this.fileHash = json['file_hash'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "file_hash": this.fileHash};
  }

  static const String CONSTRUCTOR = "inputPassportElementErrorSourceFrontSide";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceReverseSide
    implements InputPassportElementErrorSource {
  String fileHash;

  /// The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes.
  ///[fileHash] Current hash of the file containing the reverse side
  InputPassportElementErrorSourceReverseSide({this.fileHash});

  /// Parse from a json
  InputPassportElementErrorSourceReverseSide.fromJson(
      Map<String, dynamic> json) {
    this.fileHash = json['file_hash'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "file_hash": this.fileHash};
  }

  static const String CONSTRUCTOR =
      "inputPassportElementErrorSourceReverseSide";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceSelfie
    implements InputPassportElementErrorSource {
  String fileHash;

  /// The selfie contains an error. The error is considered resolved when the file with the selfie changes.
  ///[fileHash] Current hash of the file containing the selfie
  InputPassportElementErrorSourceSelfie({this.fileHash});

  /// Parse from a json
  InputPassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) {
    this.fileHash = json['file_hash'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "file_hash": this.fileHash};
  }

  static const String CONSTRUCTOR = "inputPassportElementErrorSourceSelfie";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceTranslationFile
    implements InputPassportElementErrorSource {
  String fileHash;

  /// One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes.
  ///[fileHash] Current hash of the file containing the translation
  InputPassportElementErrorSourceTranslationFile({this.fileHash});

  /// Parse from a json
  InputPassportElementErrorSourceTranslationFile.fromJson(
      Map<String, dynamic> json) {
    this.fileHash = json['file_hash'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "file_hash": this.fileHash};
  }

  static const String CONSTRUCTOR =
      "inputPassportElementErrorSourceTranslationFile";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceTranslationFiles
    implements InputPassportElementErrorSource {
  List<String> fileHashes;

  /// The translation of the document contains an error. The error is considered resolved when the list of files changes.
  ///[fileHashes] Current hashes of all files with the translation
  InputPassportElementErrorSourceTranslationFiles({this.fileHashes});

  /// Parse from a json
  InputPassportElementErrorSourceTranslationFiles.fromJson(
      Map<String, dynamic> json) {
    this.fileHashes = List<String>.from(json['file_hashes'] ?? []);
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "file_hashes": this.fileHashes};
  }

  static const String CONSTRUCTOR =
      "inputPassportElementErrorSourceTranslationFiles";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceFile
    implements InputPassportElementErrorSource {
  String fileHash;

  /// The file contains an error. The error is considered resolved when the file changes.
  ///[fileHash] Current hash of the file which has the error
  InputPassportElementErrorSourceFile({this.fileHash});

  /// Parse from a json
  InputPassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) {
    this.fileHash = json['file_hash'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "file_hash": this.fileHash};
  }

  static const String CONSTRUCTOR = "inputPassportElementErrorSourceFile";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementErrorSourceFiles
    implements InputPassportElementErrorSource {
  List<String> fileHashes;

  /// The list of attached files contains an error. The error is considered resolved when the file list changes.
  ///[fileHashes] Current hashes of all attached files
  InputPassportElementErrorSourceFiles({this.fileHashes});

  /// Parse from a json
  InputPassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) {
    this.fileHashes = List<String>.from(json['file_hashes'] ?? []);
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "file_hashes": this.fileHashes};
  }

  static const String CONSTRUCTOR = "inputPassportElementErrorSourceFiles";

  @override
  String getConstructor() => CONSTRUCTOR;
}
