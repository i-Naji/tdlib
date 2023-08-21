/// Parser for TDLib's TL schema (`td_api.tl`).
///
/// The schema is a list of combinators, each preceded by a documentation
/// block:
///
/// ```
/// //@description Contains a user's name @first_name First name @last_name
/// //-Last name; may be empty
/// userName first_name:string last_name:string = UserName;
/// ```
///
/// Abstract types are declared with a `//@class Name @description ...` line.
/// Everything after `---functions---` is a function; its result type is the
/// type after `=`. Built-in types at the top of the file (`double`, `string`,
/// `vector`, `boolFalse`/`boolTrue`, ...) are recognised and skipped.
library;

/// TL types that map straight to Dart values.
const tlBuiltInTypes = {
  'int32',
  'int53',
  'int64',
  'double',
  'string',
  'bytes',
  'Bool',
};

/// Result types of the built-in combinators at the top of the schema.
const _builtInResults = {
  'Double',
  'String',
  'Int32',
  'Int53',
  'Int64',
  'Bytes',
  'Bool',
  'Vector',
};

/// A parsed `td_api.tl`.
class TlSchema {
  TlSchema(this.classes, this.types, this.functions);

  /// Abstract types (`//@class`), in schema order.
  final List<TlClass> classes;

  /// Concrete object constructors, in schema order.
  final List<TlConstructor> types;

  /// Functions, in schema order.
  final List<TlConstructor> functions;

  /// Abstract type with [name], if there is one.
  TlClass? classNamed(String name) {
    for (final c in classes) {
      if (c.name == name) return c;
    }
    return null;
  }

  /// Constructors whose result is the abstract type [name].
  Iterable<TlConstructor> variantsOf(String name) =>
      types.where((t) => t.result == name);
}

/// An abstract type: `//@class Name @description ...`.
class TlClass {
  TlClass(this.name, this.description, {this.line = 0});

  final String name;
  final String description;

  /// Line of the declaration in the schema.
  final int line;
}

/// An object constructor or a function.
class TlConstructor {
  TlConstructor({
    required this.name,
    required this.params,
    required this.result,
    required this.description,
    required this.isFunction,
    this.line = 0,
  });

  /// Combinator name, e.g. `userName` or `getMe`.
  final String name;
  final List<TlParam> params;

  /// Type after `=`, e.g. `UserName` or `User`.
  final String result;
  final String description;
  final bool isFunction;

  /// Line of the declaration in the schema.
  final int line;

  /// Whether TDLib documents this function as callable through `td_execute`.
  bool get canBeCalledSynchronously =>
      isFunction && description.contains('Can be called synchronously');

  /// Whether this constructor is a variant of an abstract type rather than
  /// the only constructor of its own type (`userName ... = UserName`).
  bool get hasOwnType => result.toLowerCase() == name.toLowerCase();
}

/// A field of a constructor, or a parameter of a function.
class TlParam {
  TlParam(this.name, this.type, this.description);

  /// Name as written in the schema, e.g. `first_name`.
  final String name;
  final TlType type;
  final String description;
}

/// A TL type: a name, possibly `vector<...>` of another type.
class TlType {
  TlType(this.name, [this.element]);

  /// Parses `int32`, `User`, `vector<vector<PhotoSize>>`, ...
  factory TlType.parse(String text) {
    if (text.startsWith('vector<') && text.endsWith('>')) {
      return TlType('vector', TlType.parse(text.substring(7, text.length - 1)));
    }
    if (text.contains('<') || text.contains('>')) {
      throw FormatException('Unsupported TL type', text);
    }
    return TlType(text);
  }

  final String name;

  /// Element type of a `vector`.
  final TlType? element;

  bool get isVector => element != null;
  bool get isBuiltIn => element == null && tlBuiltInTypes.contains(name);

  /// An object type (not a vector, not a built-in value).
  bool get isObject => element == null && !isBuiltIn;

  @override
  String toString() => isVector ? 'vector<$element>' : name;
}

/// Parses the text of a `td_api.tl` file.
TlSchema parseTlSchema(String source) {
  final classes = <TlClass>[];
  final types = <TlConstructor>[];
  final functions = <TlConstructor>[];
  var isFunction = false;
  // Documentation text collected since the last combinator.
  final doc = <String>[];
  var lineNumber = 0;

  var classLine = 0;

  void flushClass() {
    final text = doc.join(' ');
    final parts = _splitDoc(text, const {'class', 'description'});
    final name = parts['class'];
    if (name != null && name.isNotEmpty) {
      classes.add(TlClass(
        name.split(' ').first,
        parts['description'] ?? '',
        line: classLine,
      ));
    }
    doc.clear();
  }

  for (final raw in source.split('\n')) {
    lineNumber++;
    final line = raw.trim();
    if (line.isEmpty) {
      if (_startsClass(doc)) flushClass();
      doc.clear();
      continue;
    }
    if (line == '---functions---') {
      isFunction = true;
      doc.clear();
      continue;
    }
    if (line.startsWith('---')) {
      doc.clear();
      continue;
    }
    if (line.startsWith('//')) {
      var text = line.substring(2);
      // "//-" continues the previous documentation line.
      if (text.startsWith('-')) text = text.substring(1);
      text = text.trim();
      if (text.startsWith('@class') && doc.isNotEmpty) {
        if (_startsClass(doc)) flushClass();
        doc.clear();
      }
      if (text.startsWith('@class')) classLine = lineNumber;
      doc.add(text);
      continue;
    }
    if (line.startsWith('vector {')) {
      // vector {t:Type} # [ t ] = Vector t;
      doc.clear();
      continue;
    }

    final match = _combinator.firstMatch(line);
    if (match == null) {
      throw FormatException('Cannot parse TL line $lineNumber', line);
    }
    final name = match.group(1)!;
    final args = match.group(2)!.trim();
    final result = match.group(3)!;
    if (_builtInResults.contains(result)) {
      doc.clear();
      continue;
    }
    if (_startsClass(doc)) flushClass();

    final paramTypes = <String, String>{};
    for (final arg in args.isEmpty ? const <String>[] : args.split(' ')) {
      final colon = arg.indexOf(':');
      if (colon <= 0) throw FormatException('Bad argument "$arg"', line);
      paramTypes[arg.substring(0, colon)] = arg.substring(colon + 1);
    }
    // A field called "description" is documented as "@param_description".
    final parts = _splitDoc(doc.join(' '), {
      'description',
      'param_description',
      ...paramTypes.keys,
    });
    doc.clear();

    final constructor = TlConstructor(
      name: name,
      params: [
        for (final MapEntry(key: param, value: type) in paramTypes.entries)
          TlParam(
            param,
            TlType.parse(type),
            parts[param == 'description' ? 'param_description' : param] ?? '',
          ),
      ],
      result: result,
      description: parts['description'] ?? '',
      isFunction: isFunction,
      line: lineNumber,
    );
    (isFunction ? functions : types).add(constructor);
  }
  if (_startsClass(doc)) flushClass();

  return TlSchema(classes, types, functions);
}

final _combinator = RegExp(r'^(\w+)\s*(.*?)\s*=\s*(\w+);$');
final _docKey = RegExp(r'(?:^|\s)@(\w+)(?=\s|$)');

bool _startsClass(List<String> doc) =>
    doc.isNotEmpty && doc.first.startsWith('@class');

/// Splits `@key value @key value` documentation into a map.
///
/// Only keys in [known] start a new entry, so an `@word` inside a sentence
/// (a username in an example, say) stays part of the text around it.
Map<String, String> _splitDoc(String text, Set<String> known) {
  final out = <String, String>{};
  String? current;
  var start = 0;
  void close(int end) {
    final key = current;
    if (key == null) return;
    final value = _normalize(text.substring(start, end));
    final previous = out[key];
    out[key] =
        previous == null || previous.isEmpty ? value : '$previous $value';
  }

  for (final m in _docKey.allMatches(text)) {
    final key = m.group(1)!;
    if (!known.contains(key)) continue;
    close(m.start);
    current = key;
    start = m.end;
  }
  close(text.length);
  return out;
}

String _normalize(String text) =>
    text.split(_whitespace).where((s) => s.isNotEmpty).join(' ');

final _whitespace = RegExp(r'\s+');
