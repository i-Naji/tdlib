part of '../tdapi.dart';

class WebPageInstantView extends TdObject {
  /// Describes an instant view page for a web page
  WebPageInstantView(
      {this.pageBlocks, this.viewCount, this.version, this.isRtl, this.isFull});

  /// [pageBlocks] Content of the web page
  List<PageBlock> pageBlocks;

  /// [viewCount] Number of the instant view views; 0 if unknown
  int viewCount;

  /// [version] Version of the instant view, currently can be 1 or 2
  int version;

  /// [isRtl] True, if the instant view must be shown from right to left
  bool isRtl;

  /// [isFull] True, if the instant view contains the full page. A network request might be needed to get the full web page instant view
  bool isFull;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  WebPageInstantView.fromJson(Map<String, dynamic> json) {
    this.pageBlocks = List<PageBlock>.from((json['page_blocks'] ?? [])
        .map((item) => PageBlock.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.viewCount = json['view_count'];
    this.version = json['version'];
    this.isRtl = json['is_rtl'];
    this.isFull = json['is_full'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks": this.pageBlocks.map((i) => i.toJson()).toList(),
      "view_count": this.viewCount,
      "version": this.version,
      "is_rtl": this.isRtl,
      "is_full": this.isFull,
    };
  }

  static const CONSTRUCTOR = 'webPageInstantView';

  @override
  String getConstructor() => CONSTRUCTOR;
}
