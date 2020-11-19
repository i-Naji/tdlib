part of '../tdapi.dart';

class PageBlockTableCell extends TdObject {
  /// Represents a cell of a table
  PageBlockTableCell(
      {this.text,
      this.isHeader,
      this.colspan,
      this.rowspan,
      this.align,
      this.valign});

  /// [text] Cell text; may be null. If the text is null, then the cell should be invisible
  RichText text;

  /// [isHeader] True, if it is a header cell
  bool isHeader;

  /// [colspan] The number of columns the cell should span
  int colspan;

  /// [rowspan] The number of rows the cell should span
  int rowspan;

  /// [align] Horizontal cell content alignment
  PageBlockHorizontalAlignment align;

  /// [valign] Vertical cell content alignment
  PageBlockVerticalAlignment valign;

  /// Parse from a json
  PageBlockTableCell.fromJson(Map<String, dynamic> json) {
    this.text = RichText.fromJson(json['text'] ?? <String, dynamic>{});
    this.isHeader = json['is_header'];
    this.colspan = json['colspan'];
    this.rowspan = json['rowspan'];
    this.align = PageBlockHorizontalAlignment.fromJson(
        json['align'] ?? <String, dynamic>{});
    this.valign = PageBlockVerticalAlignment.fromJson(
        json['valign'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "is_header": this.isHeader,
      "colspan": this.colspan,
      "rowspan": this.rowspan,
      "align": this.align == null ? null : this.align.toJson(),
      "valign": this.valign == null ? null : this.valign.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockTableCell';

  @override
  String getConstructor() => CONSTRUCTOR;
}
