part of dson;

//final Logger _desLog = Logger('object_mapper_deserializer');

/// Creates a new instance of [type], parses the json in [jsonStr] and puts
/// the data into the new instance.
///
/// example:
///
///     // Simple type conversion
///     Person person = fromJson('{"id": 1, "name": "John Doe"}', Person);
///
///     // List conversion
///     List<Person> persons = fromJson('[{"id": 1, "name": "John Doe"}]', [() => List<Person>(), Person]);
///
///     // Map conversion
///     Map<String, Person> personsMap = fromJson('{"person1": {"id": 1, "name": "John Doe"}}',
///                                               [() => Map<String, Person>(), [String, Person]]);
///
///     // Generics conversion
///     Page<Person> page = fromJson('{
///       "number": 1,
///       "size": 3,
///       "total": 100,
///       "items": [
///         {"id": 1, "name": "person1"},
///         {"id": 2, "name": "person2"},
///         {"id": 3, "name": "person3"}
///       ]
///     }', [() => Page<Person>(), {'items': [() => List<Person>(), Person]}]);
///
/// Throws [NoConstructorError] if [type] or Classes used inside [type] do not
/// have a constructor without or only optional arguments.
///
/// Throws [IncorrectTypeTransform] if json data types doesn't match.
///
/// Throws [FormatException] if the [jsonStr] is not valid JSON text.
dynamic fromJson(String jsonStr, /*Type | Function | List<Type | Function | List<Type | Function | ...>>*/ type) {
  var filler = json.decode(jsonStr);
  return _convertValue(type, filler);
}

/// Creates a new instance of [type] and maps the data of [dataObject] into it.
///
/// example:
///
///     // Simple type conversion
///     Person person = fromMap({"id": 1, "name": "John Doe"}, Person);
///
///     // List conversion
///     List<Person> persons = fromMap([{"id": 1, "name": "John Doe"}], [() => List<Person>, Person]);
///
///     // Map conversion
///     Map<String, Person> personsMap = fromMap({"person1": {"id": 1, "name": "John Doe"}}, [() => Map<String, Person>(), [String, Person]]);
///
///     // Generic conversion
///     Page<Person> page = fromMap({
///       "number": 1,
///       "size": 3,
///       "total": 100,
///       "items": [
///         {"id": 1, "name": "person1"},
///         {"id": 2, "name": "person2"},
///         {"id": 3, "name": "person3"}
///       ]
///     }, [() => Page<Person>(), {'items': [() => List<Person>(), Person]}]);
///
/// Throws [NoConstructorError] if [type] or Classes used inside [type] do not
/// have a constructor without or only optional arguments.
/// Throws [IncorrectTypeTransform] if json data types doesn't match.
/// Throws [FormatException] if the [jsonStr] is not valid JSON text.
dynamic fromMap(Object dataObject, /*Type | List<Type> | List<List<Type>>*/ type) {
  return _convertValue(type, dataObject);
}

/// Checks if the [type] is either [bool], [String], [int], [num], [double], or [dynamic]
bool isPrimitiveType(Type type) =>
    type == bool || type == String || type == int || type == num || type == double || type == dynamic;

/// Checks if the [type] is either primitive (see [isPrimitiveType]), List, Set, or Map;
bool isSimpleType(Type type) =>
    isPrimitiveType(type) || type == List || type == Map || type == Set;

/// Converts a list of objects to a list with a Class.
/* List | Set */ _convertGenericListOrSet(receiver, subType, List fillerList) {
//  _desLog.fine('Converting generic list');
  fillerList.forEach((item) => receiver.add(_convertValue(subType, item, "@LIST_ITEM")));

//  _desLog.fine("Created generic list: ${resultList}");
  return receiver;
}

Map _convertGenericMap(resultMap, List subTypes, Map fillerMap) {
//  _desLog.fine('Converting generic map');

  fillerMap.forEach((key, value) {
    var keyItem = _convertValue(subTypes[0], key, "@MAP_KEY");
    var valueItem = _convertValue(subTypes[1], value, "@MAP_VALUE");
    resultMap[keyItem] = valueItem;
//    _desLog.fine("Added item ${valueItem} to map key: ${keyItem}");
  });

//  _desLog.fine("Map converted completly");
  return resultMap;
}

_convertGenericT(receiver, subType, Map fillerMap) {
  fillerMap.forEach((key, value) {
    if (subType is Map && subType[key] != null) {
      receiver[key] = _convertValue(subType[key], value);
    } else {
      receiver[key] = value;
    }
  });

  return receiver;
}

/// Transforms the value of a field [key] to the correct value.
///  returns Deserialized value
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [NoConstructorError]
Object? _convertValue(/*Type | List<Type>*/ valueType, dynamic value, [String key = '@OBJECT']) {
//  _desLog.fine(() => "Converting (\"${key}\": $value) to ${valueType}");

  if (value == null) return null;

  // if valueType is `List<SomeClass>` or `Map<SomeClass0, SomeClass1>`
  if (valueType is List) {
//    _desLog.fine('Handle generic');
    var receiver;
    if(valueType[0] is Function) {
      receiver = valueType[0]();
    }
    if (receiver is List || receiver is Set) {
      // handle generic lists
      return _convertGenericListOrSet(receiver, valueType[1], value);
    } else if (receiver is! SerializableMap && receiver is Map) {
      // handle generic maps
      return _convertGenericMap(receiver, valueType[1], value);
    }
    // handle generics
    return _convertGenericT(receiver, valueType[1], value);
  } else if (valueType == String) {
    if (value is String) {
      return value;
    } else {
      throw IncorrectTypeTransform(value, 'String', key);
    }
  } else if (valueType == num) {
    if (value is num) {
      return value;
    } else {
      throw IncorrectTypeTransform(value, 'num', key);
    }
  } else if (valueType == int) {
    if (value is int) {
      return value;
    } else if (value is double) {
      return value.toInt();
    } else {
      throw IncorrectTypeTransform(value, 'int', key);
    }
  } else if (valueType == double) {
    if (value is double) {
      return value;
    } else if (value is int) {
      return value.toDouble();
    } else {
      throw IncorrectTypeTransform(value, 'double', key);
    }
  } else if (valueType == bool) {
    if (value is bool) {
      return value;
    } else {
      throw IncorrectTypeTransform(value, 'bool', key);
    }
  } else if (valueType == Map) {
    if (value is Map) {
      return value;
    } else {
      throw IncorrectTypeTransform(value, 'Map', key);
    }
  } else if (valueType == Object || valueType == dynamic) { // check this line
    return value;
  } else if (valueType == DateTime) {
    return DateTime.parse(value);
  } else {
    return _initiateClass(valueType, value);
  }
}

/// Creates a new instance of [type] by using an empty constructor name.
/// Therefore the class needs to contain a simple constructor. For example:
/// <code>
///  class TestClass {
///    String name;
///
///    TestClass(); // or TestClass([this.name])
///  }
/// </code>
/// or
/// <code>
///  class TestClass {
///    final String name;
///
///    TestClass(this.name);
///  }
/// </code>
///  Throws [NoConstructorError] if the class doesn't either have a constructor
///    without or only optional parameters, or parameters matching final fields.
Object _initiateClass(Type type, [filler]) {
  var classMirror = reflectType(type);
//  _desLog.fine("Parsing to class: ${type}");

  if (classMirror!.isEnum) {
    return classMirror.values?[filler];
  }

  var constructor = classMirror.constructors?[''];

  List positionalParams = List.filled(constructor?.positionalParameters?.length ?? 0, null);
  Map<String, dynamic> namedParameters = {};

  if (constructor!.parameters!.isNotEmpty
      && constructor.parameters?.every((p) => classMirror.fields?[p.name]?.isFinal == true) == true) {
    positionalParams = List.of(constructor.positionalParameters?.map((p) => filler[p.name]) ?? []);
    constructor.namedParameters?.forEach((name, p) => namedParameters[name] = filler[name]);
  }

//    _desLog.fine("Found constructor: \"${constrMethod}\"");
  SerializableMap obj = constructor(positionalParams, namedParameters);
  if (classMirror.setters == null) return obj;
//    _desLog.fine("Created instance of type: ${classMirror.name}");

  return obj..fromMap(filler);
}
