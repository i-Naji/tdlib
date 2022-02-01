part of '../tdapi.dart';

class CreateBasicGroupChat extends TdFunction {

  /// Returns an existing chat corresponding to a known basic group
  const CreateBasicGroupChat({
    required this.basicGroupId,
    required this.force,
  });
  
  /// [basicGroupId] Basic group identifier 
  final int basicGroupId;

  /// [force] If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
      "force": force,
      "@extra": extra,
    };
  }
  
  CreateBasicGroupChat copyWith({
    int? basicGroupId,
    bool? force,
  }) => CreateBasicGroupChat(
    basicGroupId: basicGroupId ?? this.basicGroupId,
    force: force ?? this.force,
  );

  static const CONSTRUCTOR = 'createBasicGroupChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
