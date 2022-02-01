part of '../tdapi.dart';

class SavedCredentials extends TdObject {

  /// Contains information about saved card credentials
  const SavedCredentials({
    required this.id,
    required this.title,
  });
  
  /// [id] Unique identifier of the saved credentials 
  final String id;

  /// [title] Title of the saved credentials
  final String title;
  
  /// Parse from a json
  factory SavedCredentials.fromJson(Map<String, dynamic> json) => SavedCredentials(
    id: json['id'],
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
    };
  }
  
  SavedCredentials copyWith({
    String? id,
    String? title,
  }) => SavedCredentials(
    id: id ?? this.id,
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'savedCredentials';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
