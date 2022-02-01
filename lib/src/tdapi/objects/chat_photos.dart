part of '../tdapi.dart';

class ChatPhotos extends TdObject {

  /// Contains a list of chat or user profile photos
  const ChatPhotos({
    required this.totalCount,
    required this.photos,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Total number of photos 
  final int totalCount;

  /// [photos] List of photos
  final List<ChatPhoto> photos;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatPhotos.fromJson(Map<String, dynamic> json) => ChatPhotos(
    totalCount: json['total_count'],
    photos: List<ChatPhoto>.from((json['photos'] ?? []).map((item) => ChatPhoto.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "photos": photos.map((i) => i.toJson()).toList(),
    };
  }
  
  ChatPhotos copyWith({
    int? totalCount,
    List<ChatPhoto>? photos,
    dynamic extra,
    int? clientId,
  }) => ChatPhotos(
    totalCount: totalCount ?? this.totalCount,
    photos: photos ?? this.photos,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatPhotos';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
