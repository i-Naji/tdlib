part of '../tdapi.dart';

class WebPageInstantView extends TdObject {
  /// Describes an instant view page for a web page
  const WebPageInstantView({
    required this.pageBlocks,
    required this.viewCount,
    required this.version,
    required this.isRtl,
    required this.isFull,
    required this.feedbackLink,
    this.extra,
    this.clientId,
  });

  /// [pageBlocks] Content of the web page
  final List<PageBlock> pageBlocks;

  /// [viewCount] Number of the instant view views; 0 if unknown
  final int viewCount;

  /// [version] Version of the instant view; currently, can be 1 or 2
  final int version;

  /// [isRtl] True, if the instant view must be shown from right to left
  final bool isRtl;

  /// [isFull] True, if the instant view contains the full page. A network request might be needed to get the full web page instant view
  final bool isFull;

  /// [feedbackLink] An internal link to be opened to leave feedback about the instant view
  final InternalLinkType feedbackLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory WebPageInstantView.fromJson(Map<String, dynamic> json) =>
      WebPageInstantView(
        pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? [])
            .map((item) => PageBlock.fromJson(item))
            .toList()),
        viewCount: json['view_count'],
        version: json['version'],
        isRtl: json['is_rtl'],
        isFull: json['is_full'],
        feedbackLink: InternalLinkType.fromJson(json['feedback_link']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "view_count": viewCount,
      "version": version,
      "is_rtl": isRtl,
      "is_full": isFull,
      "feedback_link": feedbackLink.toJson(),
    };
  }

  WebPageInstantView copyWith({
    List<PageBlock>? pageBlocks,
    int? viewCount,
    int? version,
    bool? isRtl,
    bool? isFull,
    InternalLinkType? feedbackLink,
    dynamic extra,
    int? clientId,
  }) =>
      WebPageInstantView(
        pageBlocks: pageBlocks ?? this.pageBlocks,
        viewCount: viewCount ?? this.viewCount,
        version: version ?? this.version,
        isRtl: isRtl ?? this.isRtl,
        isFull: isFull ?? this.isFull,
        feedbackLink: feedbackLink ?? this.feedbackLink,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'webPageInstantView';

  @override
  String getConstructor() => CONSTRUCTOR;
}
