part of '../tdapi.dart';

class PageBlockRelatedArticle extends TdObject {
  /// Contains information about a related article
  PageBlockRelatedArticle(
      {this.url,
      this.title,
      this.description,
      this.photo,
      this.author,
      this.publishDate});

  /// [url] Related article URL
  String url;

  /// [title] Article title; may be empty
  String title;

  /// [description] Article description; may be empty
  String description;

  /// [photo] Article photo; may be null
  Photo photo;

  /// [author] Article author; may be empty
  String author;

  /// [publishDate] Point in time (Unix timestamp) when the article was published; 0 if unknown
  int publishDate;

  /// Parse from a json
  PageBlockRelatedArticle.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
    this.title = json['title'];
    this.description = json['description'];
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.author = json['author'];
    this.publishDate = json['publish_date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "title": this.title,
      "description": this.description,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "author": this.author,
      "publish_date": this.publishDate,
    };
  }

  static const CONSTRUCTOR = 'pageBlockRelatedArticle';

  @override
  String getConstructor() => CONSTRUCTOR;
}
