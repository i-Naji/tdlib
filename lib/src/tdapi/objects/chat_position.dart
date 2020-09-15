part of '../tdapi.dart';

class ChatPosition extends TdObject {
  ChatList list;
  int order;
  bool isPinned;
  ChatSource source;

  /// Describes a position of a chat in a chat list. 
  /// [list] The chat list. 
  /// [order] A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order. 
  /// [isPinned] True, if the chat is pinned in the chat list. 
  /// [source] Source of the chat in the chat list; may be null
  ChatPosition({this.list,
    this.order,
    this.isPinned,
    this.source});

  /// Parse from a json
  ChatPosition.fromJson(Map<String, dynamic> json)  {
    this.list = ChatList.fromJson(json['list'] ?? <String, dynamic>{});
    this.order = json['order'];
    this.isPinned = json['is_pinned'];
    this.source = ChatSource.fromJson(json['source'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "list": this.list == null ? null : this.list.toJson(),
      "order": this.order,
      "is_pinned": this.isPinned,
      "source": this.source == null ? null : this.source.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatPosition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}