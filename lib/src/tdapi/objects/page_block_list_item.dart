part of '../tdapi.dart';

class PageBlockListItem extends TdObject {
  String label;
  List<List<PageBlock>> pageBlocks;

  /// Describes an item of a list page block. 
  /// [label] Item label . 
  /// [pageBlocks] Item blocks
  PageBlockListItem({this.label,
    this.pageBlocks});

  /// Parse from a json
  PageBlockListItem.fromJson(Map<String, dynamic> json)  {
    this.label = json['label'];
    this.pageBlocks = List<List<PageBlock>>.from((json['page_blocks'] ?? []).map((item) => List<PageBlock>.from((item ?? []).map((innerItem) => PageBlock.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "label": this.label,
      "page_blocks": this.pageBlocks.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockListItem';
}