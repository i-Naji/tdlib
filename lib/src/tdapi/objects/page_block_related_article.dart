part of '../tdapi.dart';

class PageBlockRelatedArticle extends TdObject {

  /// Contains information about a related article
  const PageBlockRelatedArticle({
    required this.url,
    required this.title,
    required this.description,
    this.photo,
    required this.author,
    required this.publishDate,
  });
  
  /// [url] Related article URL 
  final String url;

  /// [title] Article title; may be empty 
  final String title;

  /// [description] Article description; may be empty
  final String description;

  /// [photo] Article photo; may be null
  final Photo? photo;

  /// [author] Article author; may be empty 
  final String author;

  /// [publishDate] Point in time (Unix timestamp) when the article was published; 0 if unknown
  final int publishDate;
  
  /// Parse from a json
  factory PageBlockRelatedArticle.fromJson(Map<String, dynamic> json) => PageBlockRelatedArticle(
    url: json['url'],
    title: json['title'],
    description: json['description'],
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    author: json['author'],
    publishDate: json['publish_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "title": title,
      "description": description,
      "photo": photo?.toJson(),
      "author": author,
      "publish_date": publishDate,
    };
  }
  
  PageBlockRelatedArticle copyWith({
    String? url,
    String? title,
    String? description,
    Photo? photo,
    String? author,
    int? publishDate,
  }) => PageBlockRelatedArticle(
    url: url ?? this.url,
    title: title ?? this.title,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    author: author ?? this.author,
    publishDate: publishDate ?? this.publishDate,
  );

  static const CONSTRUCTOR = 'pageBlockRelatedArticle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
