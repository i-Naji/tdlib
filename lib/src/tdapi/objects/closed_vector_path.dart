part of '../tdapi.dart';

class ClosedVectorPath extends TdObject {

  /// Represents a closed vector path. The path begins at the end point of the last command
  const ClosedVectorPath({
    required this.commands,
  });
  
  /// [commands] List of vector path commands
  final List<VectorPathCommand> commands;
  
  /// Parse from a json
  factory ClosedVectorPath.fromJson(Map<String, dynamic> json) => ClosedVectorPath(
    commands: List<VectorPathCommand>.from((json['commands'] ?? []).map((item) => VectorPathCommand.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "commands": commands.map((i) => i.toJson()).toList(),
    };
  }
  
  ClosedVectorPath copyWith({
    List<VectorPathCommand>? commands,
  }) => ClosedVectorPath(
    commands: commands ?? this.commands,
  );

  static const CONSTRUCTOR = 'closedVectorPath';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
