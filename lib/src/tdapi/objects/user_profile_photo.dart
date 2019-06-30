part of '../tdapi.dart';

class UserProfilePhoto implements TLObject {
  int id;
  int addedDate;
  List<PhotoSize> sizes;

  /// Contains full information about a user profile photo.
  ///[id] Unique user profile photo identifier .
  /// [addedDate] Point in time (Unix timestamp) when the photo has been added .
  /// [sizes] Available variants of the user photo, in different sizes
  UserProfilePhoto({this.id, this.addedDate, this.sizes});

  /// Parse from a json
  UserProfilePhoto.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.addedDate = json['added_date'];
    this.sizes = (json['sizes'] ?? [])
        .map((listValue) => PhotoSize.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'added_date': this.addedDate,
      'sizes': this.sizes.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'userProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
