part of '../tdapi.dart';

class GetUserProfilePhotos extends TdFunction {

  /// Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already
  const GetUserProfilePhotos({
    required this.userId,
    required this.offset,
    required this.limit,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [offset] The number of photos to skip; must be non-negative 
  final int offset;

  /// [limit] The maximum number of photos to be returned; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetUserProfilePhotos copyWith({
    int? userId,
    int? offset,
    int? limit,
  }) => GetUserProfilePhotos(
    userId: userId ?? this.userId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getUserProfilePhotos';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
