part of '../tdapi.dart';

class GetMapThumbnailFile extends TdFunction {

  /// Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded
  const GetMapThumbnailFile({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.scale,
    required this.chatId,
  });
  
  /// [location] Location of the map center 
  final Location location;

  /// [zoom] Map zoom level; 13-20 
  final int zoom;

  /// [width] Map width in pixels before applying scale; 16-1024 
  final int width;

  /// [height] Map height in pixels before applying scale; 16-1024 
  final int height;

  /// [scale] Map scale; 1-3 
  final int scale;

  /// [chatId] Identifier of a chat, in which the thumbnail will be shown. Use 0 if unknown
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "zoom": zoom,
      "width": width,
      "height": height,
      "scale": scale,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetMapThumbnailFile copyWith({
    Location? location,
    int? zoom,
    int? width,
    int? height,
    int? scale,
    int? chatId,
  }) => GetMapThumbnailFile(
    location: location ?? this.location,
    zoom: zoom ?? this.zoom,
    width: width ?? this.width,
    height: height ?? this.height,
    scale: scale ?? this.scale,
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'getMapThumbnailFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
