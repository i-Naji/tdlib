part of '../tdapi.dart';

class PassportElementErrorSource implements TLObject {
  /// Contains the description of an error in a Telegram Passport element
  PassportElementErrorSource();

  /// a PassportElementErrorSource return type can be :
  /// * PassportElementErrorSourceTranslationFiles
  /// * PassportElementErrorSourceFile
  /// * PassportElementErrorSourceTranslationFile
  /// * PassportElementErrorSourceSelfie
  /// * PassportElementErrorSourceFrontSide
  /// * PassportElementErrorSourceDataField
  /// * PassportElementErrorSourceFiles
  /// * PassportElementErrorSourceUnspecified
  /// * PassportElementErrorSourceReverseSide
  factory PassportElementErrorSource.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case PassportElementErrorSourceTranslationFiles.CONSTRUCTOR:
        return PassportElementErrorSourceTranslationFiles.fromJson(json);
      case PassportElementErrorSourceFile.CONSTRUCTOR:
        return PassportElementErrorSourceFile.fromJson(json);
      case PassportElementErrorSourceTranslationFile.CONSTRUCTOR:
        return PassportElementErrorSourceTranslationFile.fromJson(json);
      case PassportElementErrorSourceSelfie.CONSTRUCTOR:
        return PassportElementErrorSourceSelfie.fromJson(json);
      case PassportElementErrorSourceFrontSide.CONSTRUCTOR:
        return PassportElementErrorSourceFrontSide.fromJson(json);
      case PassportElementErrorSourceDataField.CONSTRUCTOR:
        return PassportElementErrorSourceDataField.fromJson(json);
      case PassportElementErrorSourceFiles.CONSTRUCTOR:
        return PassportElementErrorSourceFiles.fromJson(json);
      case PassportElementErrorSourceUnspecified.CONSTRUCTOR:
        return PassportElementErrorSourceUnspecified.fromJson(json);
      case PassportElementErrorSourceReverseSide.CONSTRUCTOR:
        return PassportElementErrorSourceReverseSide.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSource';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceUnspecified
    implements PassportElementErrorSource {
  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added.
  ///
  PassportElementErrorSourceUnspecified();

  /// Parse from a json
  PassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSourceUnspecified';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceDataField
    implements PassportElementErrorSource {
  String fieldName;

  /// One of the data fields contains an error. The error will be considered resolved when the value of the field changes.
  ///[fieldName] Field name
  PassportElementErrorSourceDataField({this.fieldName});

  /// Parse from a json
  PassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) {
    this.fieldName = json['field_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'field_name': this.fieldName};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSourceDataField';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceFrontSide
    implements PassportElementErrorSource {
  /// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes.
  ///
  PassportElementErrorSourceFrontSide();

  /// Parse from a json
  PassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSourceFrontSide';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceReverseSide
    implements PassportElementErrorSource {
  /// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes.
  ///
  PassportElementErrorSourceReverseSide();

  /// Parse from a json
  PassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSourceReverseSide';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceSelfie implements PassportElementErrorSource {
  /// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes.
  ///
  PassportElementErrorSourceSelfie();

  /// Parse from a json
  PassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSourceSelfie';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceTranslationFile
    implements PassportElementErrorSource {
  int fileIndex;

  /// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes.
  ///[fileIndex] Index of a file with the error
  PassportElementErrorSourceTranslationFile({this.fileIndex});

  /// Parse from a json
  PassportElementErrorSourceTranslationFile.fromJson(
      Map<String, dynamic> json) {
    this.fileIndex = json['file_index'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'file_index': this.fileIndex};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSourceTranslationFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceTranslationFiles
    implements PassportElementErrorSource {
  /// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes.
  ///
  PassportElementErrorSourceTranslationFiles();

  /// Parse from a json
  PassportElementErrorSourceTranslationFiles.fromJson(
      Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR =
      'passportElementErrorSourceTranslationFiles';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceFile implements PassportElementErrorSource {
  int fileIndex;

  /// The file contains an error. The error will be considered resolved when the file changes.
  ///[fileIndex] Index of a file with the error
  PassportElementErrorSourceFile({this.fileIndex});

  /// Parse from a json
  PassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) {
    this.fileIndex = json['file_index'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'file_index': this.fileIndex};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSourceFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementErrorSourceFiles implements PassportElementErrorSource {
  /// The list of attached files contains an error. The error will be considered resolved when the list of files changes.
  ///
  PassportElementErrorSourceFiles();

  /// Parse from a json
  PassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementErrorSourceFiles';

  @override
  String getConstructor() => CONSTRUCTOR;
}
