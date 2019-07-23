part of '../tdapi.dart';

class PageBlockRelatedArticle implements TdObject {
  String url;
  String title;
  String description;
  Photo photo;
  String author;
  int publishDate;

  /// Contains information about a related article.
  ///[url] Related article URL .
  /// [title] Article title; may be empty .
  /// [paramDescription] Article description; may be empty.
  /// [photo] Article photo; may be null .
  /// [author] Article author; may be empty .
  /// [publishDate] Point in time (Unix timestamp) when the article was published; 0 if unknown
  PageBlockRelatedArticle(
      {this.url,
      this.title,
      this.description,
      this.photo,
      this.author,
      this.publishDate});

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
      "photo": this.photo.toJson(),
      "author": this.author,
      "publish_date": this.publishDate
    };
  }

  static const String CONSTRUCTOR = "pageBlockRelatedArticle";

  @override
  String getConstructor() => CONSTRUCTOR;
}
