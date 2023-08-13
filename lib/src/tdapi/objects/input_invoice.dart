part of '../tdapi.dart';

class InputInvoice extends TdObject {
  /// Describes an invoice to process
  const InputInvoice();

  /// a InputInvoice return type can be :
  /// * [InputInvoiceMessage]
  /// * [InputInvoiceName]
  factory InputInvoice.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputInvoiceMessage.CONSTRUCTOR:
        return InputInvoiceMessage.fromJson(json);
      case InputInvoiceName.CONSTRUCTOR:
        return InputInvoiceName.fromJson(json);
      default:
        return const InputInvoice();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputInvoice copyWith() => const InputInvoice();

  static const CONSTRUCTOR = 'inputInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInvoiceMessage extends InputInvoice {
  /// An invoice from a message of the type messageInvoice
  const InputInvoiceMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// Parse from a json
  factory InputInvoiceMessage.fromJson(Map<String, dynamic> json) =>
      InputInvoiceMessage(
        chatId: json['chat_id'],
        messageId: json['message_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  @override
  InputInvoiceMessage copyWith({
    int? chatId,
    int? messageId,
  }) =>
      InputInvoiceMessage(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
      );

  static const CONSTRUCTOR = 'inputInvoiceMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInvoiceName extends InputInvoice {
  /// An invoice from a link of the type internalLinkTypeInvoice
  const InputInvoiceName({
    required this.name,
  });

  /// [name] Name of the invoice
  final String name;

  /// Parse from a json
  factory InputInvoiceName.fromJson(Map<String, dynamic> json) =>
      InputInvoiceName(
        name: json['name'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
    };
  }

  @override
  InputInvoiceName copyWith({
    String? name,
  }) =>
      InputInvoiceName(
        name: name ?? this.name,
      );

  static const CONSTRUCTOR = 'inputInvoiceName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
