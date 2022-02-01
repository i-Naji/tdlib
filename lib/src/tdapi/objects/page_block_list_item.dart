part of '../tdapi.dart';

class PageBlockListItem extends TdObject {

  /// Describes an item of a list page block
  const PageBlockListItem({
    required this.label,
    required this.pageBlocks,
  });
  
  /// [label] Item label 
  final String label;

  /// [pageBlocks] Item blocks
  final List<PageBlock> pageBlocks;
  
  /// Parse from a json
  factory PageBlockListItem.fromJson(Map<String, dynamic> json) => PageBlockListItem(
    label: json['label'],
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "label": label,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
    };
  }
  
  PageBlockListItem copyWith({
    String? label,
    List<PageBlock>? pageBlocks,
  }) => PageBlockListItem(
    label: label ?? this.label,
    pageBlocks: pageBlocks ?? this.pageBlocks,
  );

  static const CONSTRUCTOR = 'pageBlockListItem';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
