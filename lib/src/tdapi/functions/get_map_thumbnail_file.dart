part of '../tdapi.dart';

class GetMapThumbnailFile extends TLFunction {
  Location location;
  int zoom;
  int width;
  int height;
  int scale;
  int chatId;
  dynamic extra;

  /// Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded.
  ///[location] Location of the map center .
  /// [zoom] Map zoom level; 13-20 .
  /// [width] Map width in pixels before applying scale; 16-1024 .
  /// [height] Map height in pixels before applying scale; 16-1024 .
  /// [scale] Map scale; 1-3 .
  /// [chatId] Identifier of a chat, in which the thumbnail will be shown. Use 0 if unknown
  GetMapThumbnailFile(
      {this.location,
      this.zoom,
      this.width,
      this.height,
      this.scale,
      this.chatId});

  /// Parse from a json
  GetMapThumbnailFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "zoom": this.zoom,
      "width": this.width,
      "height": this.height,
      "scale": this.scale,
      "chat_id": this.chatId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getMapThumbnailFile";

  @override
  String getConstructor() => CONSTRUCTOR;
}
