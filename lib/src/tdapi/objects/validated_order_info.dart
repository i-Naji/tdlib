part of '../tdapi.dart';

class ValidatedOrderInfo implements TLObject {
  String orderInfoId;
  List<ShippingOption> shippingOptions;
  dynamic extra;

  /// Contains a temporary identifier of validated order information, which is stored for one hour. Also contains the available shipping options.
  ///[orderInfoId] Temporary identifier of the order information .
  /// [shippingOptions] Available shipping options
  ValidatedOrderInfo({this.orderInfoId, this.shippingOptions});

  /// Parse from a json
  ValidatedOrderInfo.fromJson(Map<String, dynamic> json) {
    this.orderInfoId = json['order_info_id'];
    this.shippingOptions = (json['shipping_options'] ?? [])
        .map((listValue) => ShippingOption.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'order_info_id': this.orderInfoId,
      'shipping_options':
          this.shippingOptions.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'validatedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
