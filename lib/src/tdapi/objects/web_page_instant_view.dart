part of '../tdapi.dart';

class WebPageInstantView implements TLObject {
  List pageBlocks;
  int version;
  String url;
  bool isRtl;
  bool isFull;
  dynamic extra;

  /// Describes an instant view page for a web page.
  ///[pageBlocks] Content of the web page.
  /// [version] Version of the instant view, currently can be 1 or 2.
  /// [url] Instant view URL; may be different from WebPage.url and must be used for the correct anchors handling.
  /// [isRtl] True, if the instant view must be shown from right to left.
  /// [isFull] True, if the instant view contains the full page. A network request might be needed to get the full web page instant view
  WebPageInstantView(
      {this.pageBlocks, this.version, this.url, this.isRtl, this.isFull});

  /// Parse from a json
  WebPageInstantView.fromJson(Map<String, dynamic> json) {
    this.pageBlocks = (json['page_blocks'] ?? [])
        .map((listValue) => PageBlock.fromJson(listValue))
        .toList();
    this.version = json['version'];
    this.url = json['url'];
    this.isRtl = json['is_rtl'];
    this.isFull = json['is_full'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks":
          this.pageBlocks.map((listItem) => listItem.toJson()).toList(),
      "version": this.version,
      "url": this.url,
      "is_rtl": this.isRtl,
      "is_full": this.isFull
    };
  }

  static const String CONSTRUCTOR = "webPageInstantView";

  @override
  String getConstructor() => CONSTRUCTOR;
}
