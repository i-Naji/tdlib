part of '../tdapi.dart';

class WebApp extends TdObject {
  /// Describes a Web App. Use getInternalLink with internalLinkTypeWebApp to share the Web App
  const WebApp({
    required this.shortName,
    required this.title,
    required this.description,
    required this.photo,
    this.animation,
  });

  /// [shortName] Web App short name
  final String shortName;

  /// [title] Web App title
  final String title;

  /// [description] Web App description
  final String description;

  /// [photo] Web App photo
  final Photo photo;

  /// [animation] Web App animation; may be null
  final Animation? animation;

  /// Parse from a json
  factory WebApp.fromJson(Map<String, dynamic> json) => WebApp(
        shortName: json['short_name'],
        title: json['title'],
        description: json['description'],
        photo: Photo.fromJson(json['photo']),
        animation: json['animation'] == null
            ? null
            : Animation.fromJson(json['animation']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "short_name": shortName,
      "title": title,
      "description": description,
      "photo": photo.toJson(),
      "animation": animation?.toJson(),
    };
  }

  WebApp copyWith({
    String? shortName,
    String? title,
    String? description,
    Photo? photo,
    Animation? animation,
  }) =>
      WebApp(
        shortName: shortName ?? this.shortName,
        title: title ?? this.title,
        description: description ?? this.description,
        photo: photo ?? this.photo,
        animation: animation ?? this.animation,
      );

  static const CONSTRUCTOR = 'webApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
