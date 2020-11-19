part of '../tdapi.dart';

class ChatPhotos extends TdObject {
  /// Contains a list of chat or user profile photos
  ChatPhotos({this.totalCount, this.photos});

  /// [totalCount] Total number of photos
  int totalCount;

  /// [photos] List of photos
  List<ChatPhoto> photos;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatPhotos.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.photos = List<ChatPhoto>.from((json['photos'] ?? [])
        .map((item) => ChatPhoto.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "photos": this.photos.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatPhotos';

  @override
  String getConstructor() => CONSTRUCTOR;
}
