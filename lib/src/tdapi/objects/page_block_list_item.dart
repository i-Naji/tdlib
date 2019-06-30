part of '../tdapi.dart';

class PageBlockListItem implements TLObject {
  String label;
  List pageBlocks;

  /// Describes an item of a list page block.
  ///[label] Item label .
  /// [pageBlocks] Item blocks
  PageBlockListItem({this.label, this.pageBlocks});

  /// Parse from a json
  PageBlockListItem.fromJson(Map<String, dynamic> json) {
    this.label = json['label'];
    this.pageBlocks = (json['page_blocks'] ?? [])
        .map((listValue) => PageBlock.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'label': this.label,
      'page_blocks':
          this.pageBlocks.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'pageBlockListItem';

  @override
  String getConstructor() => CONSTRUCTOR;
}
