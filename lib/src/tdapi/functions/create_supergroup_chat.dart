part of '../tdapi.dart';

class CreateSupergroupChat extends TdFunction {

  /// Returns an existing chat corresponding to a known supergroup or channel
  const CreateSupergroupChat({
    required this.supergroupId,
    required this.force,
  });
  
  /// [supergroupId] Supergroup or channel identifier 
  final int supergroupId;

  /// [force] If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "force": force,
      "@extra": extra,
    };
  }
  
  CreateSupergroupChat copyWith({
    int? supergroupId,
    bool? force,
  }) => CreateSupergroupChat(
    supergroupId: supergroupId ?? this.supergroupId,
    force: force ?? this.force,
  );

  static const CONSTRUCTOR = 'createSupergroupChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
