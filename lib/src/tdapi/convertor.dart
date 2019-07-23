part of 'tdapi.dart';

TdObject convertToObject(String query) {
  if (query != null) {
    final newJson = json.decode(query);
    TdObject object = allObjects[newJson['@type']](newJson);
    return object;
  } else {
    return null;
  }
}
