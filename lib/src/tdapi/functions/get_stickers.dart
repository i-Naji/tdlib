part of '../tdapi.dart';

class GetStickers extends TdFunction {
  /// Returns stickers from the installed sticker sets that correspond to any of the given emoji or can be found by sticker-specific keywords. If the query is non-empty, then favorite, recently used or trending stickers may also be returned
  const GetStickers({
    required this.stickerType,
    required this.query,
    required this.limit,
    required this.chatId,
  });

  /// [stickerType] Type of the stickers to return
  final StickerType stickerType;

  /// [query] Search query; a space-separated list of emoji or a keyword prefix. If empty, returns all known installed stickers
  final String query;

  /// [limit] The maximum number of stickers to be returned
  final int limit;

  /// [chatId] Chat identifier for which to return stickers. Available custom emoji stickers may be different for different chats
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "query": query,
      "limit": limit,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  GetStickers copyWith({
    StickerType? stickerType,
    String? query,
    int? limit,
    int? chatId,
  }) =>
      GetStickers(
        stickerType: stickerType ?? this.stickerType,
        query: query ?? this.query,
        limit: limit ?? this.limit,
        chatId: chatId ?? this.chatId,
      );

  static const CONSTRUCTOR = 'getStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
