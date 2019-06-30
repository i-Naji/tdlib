part of '../tdapi.dart';

class Document implements TLObject {
  String fileName;
  String mimeType;
  PhotoSize thumbnail;
  File document;

  /// Describes a document of any type.
  ///[fileName] Original name of the file; as defined by the sender .
  /// [mimeType] MIME type of the file; as defined by the sender.
  /// [thumbnail] Document thumbnail; as defined by the sender; may be null .
  /// [document] File containing the document
  Document({this.fileName, this.mimeType, this.thumbnail, this.document});

  /// Parse from a json
  Document.fromJson(Map<String, dynamic> json) {
    this.fileName = json['file_name'];
    this.mimeType = json['mime_type'];
    this.thumbnail =
        PhotoSize.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.document = File.fromJson(json['document'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'file_name': this.fileName,
      'mime_type': this.mimeType,
      'thumbnail': this.thumbnail.toJson(),
      'document': this.document.toJson()
    };
  }

  static const String CONSTRUCTOR = 'document';

  @override
  String getConstructor() => CONSTRUCTOR;
}
