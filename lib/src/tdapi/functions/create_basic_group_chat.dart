part of '../tdapi.dart';

class CreateBasicGroupChat extends TdFunction {
  int basicGroupId;
  bool force;
  dynamic extra;

  /// Returns an existing chat corresponding to a known basic group. 
  /// [basicGroupId] Basic group identifier . 
  /// [force] If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  CreateBasicGroupChat({this.basicGroupId,
    this.force});

  /// Parse from a json
  CreateBasicGroupChat.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createBasicGroupChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}