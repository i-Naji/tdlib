part of '../tdapi.dart';

class ChatEventLogFilters extends TdObject {
  bool messageEdits;
  bool messageDeletions;
  bool messagePins;
  bool memberJoins;
  bool memberLeaves;
  bool memberInvites;
  bool memberPromotions;
  bool memberRestrictions;
  bool infoChanges;
  bool settingChanges;

  /// Represents a set of filters used to obtain a chat event log. 
  /// [messageEdits] True, if message edits should be returned. 
  /// [messageDeletions] True, if message deletions should be returned. 
  /// [messagePins] True, if pin/unpin events should be returned. 
  /// [memberJoins] True, if members joining events should be returned. 
  /// [memberLeaves] True, if members leaving events should be returned. 
  /// [memberInvites] True, if invited member events should be returned. 
  /// [memberPromotions] True, if member promotion/demotion events should be returned. 
  /// [memberRestrictions] True, if member restricted/unrestricted/banned/unbanned events should be returned. 
  /// [infoChanges] True, if changes in chat information should be returned. 
  /// [settingChanges] True, if changes in chat settings should be returned
  ChatEventLogFilters({this.messageEdits,
    this.messageDeletions,
    this.messagePins,
    this.memberJoins,
    this.memberLeaves,
    this.memberInvites,
    this.memberPromotions,
    this.memberRestrictions,
    this.infoChanges,
    this.settingChanges});

  /// Parse from a json
  ChatEventLogFilters.fromJson(Map<String, dynamic> json)  {
    this.messageEdits = json['message_edits'];
    this.messageDeletions = json['message_deletions'];
    this.messagePins = json['message_pins'];
    this.memberJoins = json['member_joins'];
    this.memberLeaves = json['member_leaves'];
    this.memberInvites = json['member_invites'];
    this.memberPromotions = json['member_promotions'];
    this.memberRestrictions = json['member_restrictions'];
    this.infoChanges = json['info_changes'];
    this.settingChanges = json['setting_changes'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_edits": this.messageEdits,
      "message_deletions": this.messageDeletions,
      "message_pins": this.messagePins,
      "member_joins": this.memberJoins,
      "member_leaves": this.memberLeaves,
      "member_invites": this.memberInvites,
      "member_promotions": this.memberPromotions,
      "member_restrictions": this.memberRestrictions,
      "info_changes": this.infoChanges,
      "setting_changes": this.settingChanges,
    };
  }

  static const CONSTRUCTOR = 'chatEventLogFilters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}