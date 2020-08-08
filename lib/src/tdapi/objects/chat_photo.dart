part of '../tdapi.dart';

class ChatPhoto extends TdObject {
  int id;
  int addedDate;
  Minithumbnail minithumbnail;
  List<PhotoSize> sizes;
  AnimatedChatPhoto animation;

  /// Describes a chat or user profile photo. 
  /// [id] Unique photo identifier. 
  /// [addedDate] Point in time (Unix timestamp) when the photo has been added. 
  /// [minithumbnail] Photo minithumbnail; may be null. 
  /// [sizes] Available variants of the photo in JPEG format, in different size. 
  /// [animation] Animated variant of the photo in MPEG4 format; may be null
  ChatPhoto({this.id,
    this.addedDate,
    this.minithumbnail,
    this.sizes,
    this.animation});

  /// Parse from a json
  ChatPhoto.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.addedDate = json['added_date'];
    this.minithumbnail = Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
    this.sizes = List<PhotoSize>.from((json['sizes'] ?? []).map((item) => PhotoSize.fromJson(item ?? <String, dynamic>{})).toList());
    this.animation = AnimatedChatPhoto.fromJson(json['animation'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "added_date": this.addedDate,
      "minithumbnail": this.minithumbnail.toJson(),
      "sizes": this.sizes.map((i) => i.toJson()).toList(),
      "animation": this.animation.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}