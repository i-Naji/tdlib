part of '../tdapi.dart';

class PageBlockListItem extends TdObject {
  String label;
  List<PageBlock> pageBlocks;

  /// Describes an item of a list page block. 
  /// [label] Item label . 
  /// [pageBlocks] Item blocks
  PageBlockListItem({this.label,
    this.pageBlocks});

  /// Parse from a json
  PageBlockListItem.fromJson(Map<String, dynamic> json)  {
    this.label = json['label'];
    this.pageBlocks = List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "label": this.label,
      "page_blocks": this.pageBlocks.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockListItem';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}