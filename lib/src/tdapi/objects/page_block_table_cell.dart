part of '../tdapi.dart';

class PageBlockTableCell implements TdObject {
  var text;
  bool isHeader;
  int colspan;
  int rowspan;
  var align;
  var valign;

  /// Represents a cell of a table.
  ///[text] Cell text; may be null. If the text is null, then the cell should be invisible .
  /// [isHeader] True, if it is a header cell.
  /// [colspan] The number of columns the cell should span .
  /// [rowspan] The number of rows the cell should span.
  /// [align] Horizontal cell content alignment .
  /// [valign] Vertical cell content alignment
  PageBlockTableCell(
      {this.text,
      this.isHeader,
      this.colspan,
      this.rowspan,
      this.align,
      this.valign});

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
      "text": this.text.toJson(),
      "is_header": this.isHeader,
      "colspan": this.colspan,
      "rowspan": this.rowspan,
      "align": this.align.toJson(),
      "valign": this.valign.toJson()
    };
  }

  static const String CONSTRUCTOR = "pageBlockTableCell";

  @override
  String getConstructor() => CONSTRUCTOR;
}
