part of '../tdapi.dart';

class PassportElementErrorSource extends TdObject {

  /// Contains the description of an error in a Telegram Passport element
  const PassportElementErrorSource();
  
  /// a PassportElementErrorSource return type can be :
  /// * [PassportElementErrorSourceUnspecified]
  /// * [PassportElementErrorSourceDataField]
  /// * [PassportElementErrorSourceFrontSide]
  /// * [PassportElementErrorSourceReverseSide]
  /// * [PassportElementErrorSourceSelfie]
  /// * [PassportElementErrorSourceTranslationFile]
  /// * [PassportElementErrorSourceTranslationFiles]
  /// * [PassportElementErrorSourceFile]
  /// * [PassportElementErrorSourceFiles]
  factory PassportElementErrorSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PassportElementErrorSourceUnspecified.CONSTRUCTOR:
        return PassportElementErrorSourceUnspecified.fromJson(json);
      case PassportElementErrorSourceDataField.CONSTRUCTOR:
        return PassportElementErrorSourceDataField.fromJson(json);
      case PassportElementErrorSourceFrontSide.CONSTRUCTOR:
        return PassportElementErrorSourceFrontSide.fromJson(json);
      case PassportElementErrorSourceReverseSide.CONSTRUCTOR:
        return PassportElementErrorSourceReverseSide.fromJson(json);
      case PassportElementErrorSourceSelfie.CONSTRUCTOR:
        return PassportElementErrorSourceSelfie.fromJson(json);
      case PassportElementErrorSourceTranslationFile.CONSTRUCTOR:
        return PassportElementErrorSourceTranslationFile.fromJson(json);
      case PassportElementErrorSourceTranslationFiles.CONSTRUCTOR:
        return PassportElementErrorSourceTranslationFiles.fromJson(json);
      case PassportElementErrorSourceFile.CONSTRUCTOR:
        return PassportElementErrorSourceFile.fromJson(json);
      case PassportElementErrorSourceFiles.CONSTRUCTOR:
        return PassportElementErrorSourceFiles.fromJson(json);
      default:
        return const PassportElementErrorSource();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PassportElementErrorSource copyWith() => const PassportElementErrorSource();

  static const CONSTRUCTOR = 'passportElementErrorSource';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {

  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
  const PassportElementErrorSourceUnspecified();
  
  /// Parse from a json
  factory PassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceUnspecified();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementErrorSourceUnspecified copyWith() => const PassportElementErrorSourceUnspecified();

  static const CONSTRUCTOR = 'passportElementErrorSourceUnspecified';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceDataField extends PassportElementErrorSource {

  /// One of the data fields contains an error. The error will be considered resolved when the value of the field changes
  const PassportElementErrorSourceDataField({
    required this.fieldName,
  });
  
  /// [fieldName] Field name
  final String fieldName;
  
  /// Parse from a json
  factory PassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceDataField(
    fieldName: json['field_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "field_name": fieldName,
    };
  }
  
  @override
  PassportElementErrorSourceDataField copyWith({
    String? fieldName,
  }) => PassportElementErrorSourceDataField(
    fieldName: fieldName ?? this.fieldName,
  );

  static const CONSTRUCTOR = 'passportElementErrorSourceDataField';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceFrontSide extends PassportElementErrorSource {

  /// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes
  const PassportElementErrorSourceFrontSide();
  
  /// Parse from a json
  factory PassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceFrontSide();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementErrorSourceFrontSide copyWith() => const PassportElementErrorSourceFrontSide();

  static const CONSTRUCTOR = 'passportElementErrorSourceFrontSide';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceReverseSide extends PassportElementErrorSource {

  /// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes
  const PassportElementErrorSourceReverseSide();
  
  /// Parse from a json
  factory PassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceReverseSide();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementErrorSourceReverseSide copyWith() => const PassportElementErrorSourceReverseSide();

  static const CONSTRUCTOR = 'passportElementErrorSourceReverseSide';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceSelfie extends PassportElementErrorSource {

  /// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes
  const PassportElementErrorSourceSelfie();
  
  /// Parse from a json
  factory PassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceSelfie();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementErrorSourceSelfie copyWith() => const PassportElementErrorSourceSelfie();

  static const CONSTRUCTOR = 'passportElementErrorSourceSelfie';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceTranslationFile extends PassportElementErrorSource {

  /// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes
  const PassportElementErrorSourceTranslationFile({
    required this.fileIndex,
  });
  
  /// [fileIndex] Index of a file with the error
  final int fileIndex;
  
  /// Parse from a json
  factory PassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceTranslationFile(
    fileIndex: json['file_index'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_index": fileIndex,
    };
  }
  
  @override
  PassportElementErrorSourceTranslationFile copyWith({
    int? fileIndex,
  }) => PassportElementErrorSourceTranslationFile(
    fileIndex: fileIndex ?? this.fileIndex,
  );

  static const CONSTRUCTOR = 'passportElementErrorSourceTranslationFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceTranslationFiles extends PassportElementErrorSource {

  /// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes
  const PassportElementErrorSourceTranslationFiles();
  
  /// Parse from a json
  factory PassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceTranslationFiles();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementErrorSourceTranslationFiles copyWith() => const PassportElementErrorSourceTranslationFiles();

  static const CONSTRUCTOR = 'passportElementErrorSourceTranslationFiles';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceFile extends PassportElementErrorSource {

  /// The file contains an error. The error will be considered resolved when the file changes
  const PassportElementErrorSourceFile({
    required this.fileIndex,
  });
  
  /// [fileIndex] Index of a file with the error
  final int fileIndex;
  
  /// Parse from a json
  factory PassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceFile(
    fileIndex: json['file_index'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_index": fileIndex,
    };
  }
  
  @override
  PassportElementErrorSourceFile copyWith({
    int? fileIndex,
  }) => PassportElementErrorSourceFile(
    fileIndex: fileIndex ?? this.fileIndex,
  );

  static const CONSTRUCTOR = 'passportElementErrorSourceFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementErrorSourceFiles extends PassportElementErrorSource {

  /// The list of attached files contains an error. The error will be considered resolved when the list of files changes
  const PassportElementErrorSourceFiles();
  
  /// Parse from a json
  factory PassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceFiles();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementErrorSourceFiles copyWith() => const PassportElementErrorSourceFiles();

  static const CONSTRUCTOR = 'passportElementErrorSourceFiles';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
