part of '../tdapi.dart';

class ChatActionBar extends TdObject {

  /// Describes actions which must be possible to do through a chat action bar
  const ChatActionBar();
  
  /// a ChatActionBar return type can be :
  /// * [ChatActionBarReportSpam]
  /// * [ChatActionBarReportUnrelatedLocation]
  /// * [ChatActionBarInviteMembers]
  /// * [ChatActionBarReportAddBlock]
  /// * [ChatActionBarAddContact]
  /// * [ChatActionBarSharePhoneNumber]
  /// * [ChatActionBarJoinRequest]
  factory ChatActionBar.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatActionBarReportSpam.CONSTRUCTOR:
        return ChatActionBarReportSpam.fromJson(json);
      case ChatActionBarReportUnrelatedLocation.CONSTRUCTOR:
        return ChatActionBarReportUnrelatedLocation.fromJson(json);
      case ChatActionBarInviteMembers.CONSTRUCTOR:
        return ChatActionBarInviteMembers.fromJson(json);
      case ChatActionBarReportAddBlock.CONSTRUCTOR:
        return ChatActionBarReportAddBlock.fromJson(json);
      case ChatActionBarAddContact.CONSTRUCTOR:
        return ChatActionBarAddContact.fromJson(json);
      case ChatActionBarSharePhoneNumber.CONSTRUCTOR:
        return ChatActionBarSharePhoneNumber.fromJson(json);
      case ChatActionBarJoinRequest.CONSTRUCTOR:
        return ChatActionBarJoinRequest.fromJson(json);
      default:
        return const ChatActionBar();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatActionBar copyWith() => const ChatActionBar();

  static const CONSTRUCTOR = 'chatActionBar';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionBarReportSpam extends ChatActionBar {

  /// The chat can be reported as spam using the method reportChat with the reason chatReportReasonSpam
  const ChatActionBarReportSpam({
    required this.canUnarchive,
  });
  
  /// [canUnarchive] If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  final bool canUnarchive;
  
  /// Parse from a json
  factory ChatActionBarReportSpam.fromJson(Map<String, dynamic> json) => ChatActionBarReportSpam(
    canUnarchive: json['can_unarchive'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_unarchive": canUnarchive,
    };
  }
  
  @override
  ChatActionBarReportSpam copyWith({
    bool? canUnarchive,
  }) => ChatActionBarReportSpam(
    canUnarchive: canUnarchive ?? this.canUnarchive,
  );

  static const CONSTRUCTOR = 'chatActionBarReportSpam';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionBarReportUnrelatedLocation extends ChatActionBar {

  /// The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason chatReportReasonUnrelatedLocation
  const ChatActionBarReportUnrelatedLocation();
  
  /// Parse from a json
  factory ChatActionBarReportUnrelatedLocation.fromJson(Map<String, dynamic> json) => const ChatActionBarReportUnrelatedLocation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionBarReportUnrelatedLocation copyWith() => const ChatActionBarReportUnrelatedLocation();

  static const CONSTRUCTOR = 'chatActionBarReportUnrelatedLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionBarInviteMembers extends ChatActionBar {

  /// The chat is a recently created group chat to which new members can be invited
  const ChatActionBarInviteMembers();
  
  /// Parse from a json
  factory ChatActionBarInviteMembers.fromJson(Map<String, dynamic> json) => const ChatActionBarInviteMembers();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionBarInviteMembers copyWith() => const ChatActionBarInviteMembers();

  static const CONSTRUCTOR = 'chatActionBarInviteMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionBarReportAddBlock extends ChatActionBar {

  /// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method toggleMessageSenderIsBlocked, or the other user can be added to the contact list using the method addContact
  const ChatActionBarReportAddBlock({
    required this.canUnarchive,
    required this.distance,
  });
  
  /// [canUnarchive] If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  final bool canUnarchive;

  /// [distance] If non-negative, the current user was found by the peer through searchChatsNearby and this is the distance between the users
  final int distance;
  
  /// Parse from a json
  factory ChatActionBarReportAddBlock.fromJson(Map<String, dynamic> json) => ChatActionBarReportAddBlock(
    canUnarchive: json['can_unarchive'],
    distance: json['distance'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_unarchive": canUnarchive,
      "distance": distance,
    };
  }
  
  @override
  ChatActionBarReportAddBlock copyWith({
    bool? canUnarchive,
    int? distance,
  }) => ChatActionBarReportAddBlock(
    canUnarchive: canUnarchive ?? this.canUnarchive,
    distance: distance ?? this.distance,
  );

  static const CONSTRUCTOR = 'chatActionBarReportAddBlock';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionBarAddContact extends ChatActionBar {

  /// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact
  const ChatActionBarAddContact();
  
  /// Parse from a json
  factory ChatActionBarAddContact.fromJson(Map<String, dynamic> json) => const ChatActionBarAddContact();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionBarAddContact copyWith() => const ChatActionBarAddContact();

  static const CONSTRUCTOR = 'chatActionBarAddContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionBarSharePhoneNumber extends ChatActionBar {

  /// The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber
  const ChatActionBarSharePhoneNumber();
  
  /// Parse from a json
  factory ChatActionBarSharePhoneNumber.fromJson(Map<String, dynamic> json) => const ChatActionBarSharePhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionBarSharePhoneNumber copyWith() => const ChatActionBarSharePhoneNumber();

  static const CONSTRUCTOR = 'chatActionBarSharePhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionBarJoinRequest extends ChatActionBar {

  /// The chat is a private chat with an administrator of a chat to which the user sent join request
  const ChatActionBarJoinRequest({
    required this.title,
    required this.isChannel,
    required this.requestDate,
  });
  
  /// [title] Title of the chat to which the join request was sent
  final String title;

  /// [isChannel] True, if the join request was sent to a channel chat
  final bool isChannel;

  /// [requestDate] Point in time (Unix timestamp) when the join request was sent
  final int requestDate;
  
  /// Parse from a json
  factory ChatActionBarJoinRequest.fromJson(Map<String, dynamic> json) => ChatActionBarJoinRequest(
    title: json['title'],
    isChannel: json['is_channel'],
    requestDate: json['request_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "is_channel": isChannel,
      "request_date": requestDate,
    };
  }
  
  @override
  ChatActionBarJoinRequest copyWith({
    String? title,
    bool? isChannel,
    int? requestDate,
  }) => ChatActionBarJoinRequest(
    title: title ?? this.title,
    isChannel: isChannel ?? this.isChannel,
    requestDate: requestDate ?? this.requestDate,
  );

  static const CONSTRUCTOR = 'chatActionBarJoinRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
