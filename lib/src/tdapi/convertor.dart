part of 'tdapi.dart';

TLObject convertToObject(String query) {
  if (query != null) {
    final newJson = json.decode(query);
    TLObject object = allObjects[newJson['@type']](newJson);
    return object;
  } else {
    return null;
  }
}
