part of dson;

//final Logger _desLog = new Logger('object_mapper_deserializer');

/// Creates a new instance of [type], parses the json in [jsonStr] and puts
/// the data into the new instance.
///
/// example:
///
///     // Simple type conversion
///     Person person = fromJson('{"id": 1, "name": "John Doe"}', Person);
///
///     // List conversion
///     List<Person> persons = fromJson('[{"id": 1, "name": "John Doe"}]', [List, Person]);
///
///     // Map conversion
///     Map<String, Person> personsMap = fromJson('{"person1": {"id": 1, "name": "John Doe"}}', [Map, [String, Person]]);
///
/// Throws [NoConstructorError] if [type] or Classes used inside [type] do not
/// have a constructor without or only optional arguments.
///
/// Throws [IncorrectTypeTransform] if json data types doesn't match.
///
/// Throws [FormatException] if the [jsonStr] is not valid JSON text.
dynamic fromJson(String jsonStr, /*Type | List<Type> | List<List<Type>>*/ type) {
  var filler = JSON.decode(jsonStr);
  return _convertValue(type, filler);
}

/// This function is deprecated. Use `fromJson(jsonStr, [List, YourType])` instead.
///
/// Creates a list with instances of [clazz] and puts the data of the parsed json
/// of [jsonStr] into the instances.
///   Returns A list of objects of [clazz].
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
@deprecated
List fromJsonList(String jsonStr, Type clazz) {
  List returnList = [];
  List filler = JSON.decode(jsonStr);
  if ([int, num, double, bool, String].any((v) => v == clazz)) {
    return filler;
  }
  filler.forEach((item) {
    Object obj = _convertValue(clazz, item);
    returnList.add(obj);
  });

  return returnList;
}

/// This function is deprecated. Use `fromJson(jsonStr, [Map, [KeyType, ValueType]])` instead.
///
/// Creates a map with instances of [clazz] in values and puts the data of the parsed json
/// of [jsonStr] into the instances.
///   Returns A map of objects of [clazz].
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
@deprecated
Map fromJsonMap(String jsonStr, Type clazz) {
  Map returnMap = {};
  Map filler = JSON.decode(jsonStr);
  if ([int, num, double, bool, String].any((v) => v == clazz)) {
    return filler;
  }
  filler.keys.forEach((key) {
    Object obj = _convertValue(clazz, filler[key]);
    returnMap[key] = obj;
  });

  return returnMap;
}


/// Creates a new instance of [type] and maps the data of [dataObject] into it.
///
/// example:
///
///     // Simple type conversion
///     Person person = fromMap({"id": 1, "name": "John Doe"}, Person);
///
///     // List conversion
///     List<Person> persons = fromMap([{"id": 1, "name": "John Doe"}], [List, Person]);
///
///     // Map conversion
///     Map<String, Person> personsMap = fromMap({"person1": {"id": 1, "name": "John Doe"}}, [Map, [String, Person]]);
///
/// Throws [NoConstructorError] if [type] or Classes used inside [type] do not
/// have a constructor without or only optional arguments.
/// Throws [IncorrectTypeTransform] if json data types doesn't match.
/// Throws [FormatException] if the [jsonStr] is not valid JSON text.
dynamic fromMap(Object dataObject, /*Type | List<Type> | List<List<Type>>*/ type) {
  return _convertValue(type, dataObject);
}

/// This function is deprecated. Use `fromMap(jsonStr, [List, YourType])` instead.
///
/// Creates a list with instances of [clazz] and maps the data of [dataMap] into
/// each instance.
///   Returns A list of objects of [clazz].
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
@deprecated
List<T> fromMapList<T extends Object>(List<Map> dataMap, Type clazz) {
  var returnList = <T>[];
  dataMap.forEach((item) {
    T obj = _convertValue(clazz, item) as T;
    returnList.add(obj);
  });

  return returnList;
}

/// Fills an [object] with the data of [dataObject] and returns the [object].
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
dynamic fill(Map dataObject, Object object) {
  return _fillObject(object, dataObject);
}

/// Puts the data of the [filler] into the object in [objMirror]
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
Object _fillObject(SerializableMap obj, filler) {
  var classMirror = reflectType(obj.runtimeType);

  classMirror.setters.forEach((varName) {
    DeclarationMirror decl = classMirror.fields[varName];
    String fieldName = varName;
    var valueType = decl.type;

    // check if the property is renamed by SerializedName annotation
    SerializedName prop = decl.annotations?.firstWhere((a) => a is SerializedName, orElse: () => null);
    if (prop?.name != null) {
      fieldName = prop.name;
    }
//    _desLog.fine('Try to fill object with: ${fieldName}: ${filler[fieldName]}');

    if (filler[fieldName] != null) {
      obj[varName] = _convertValue(valueType, filler[fieldName], varName);
    }
  });

//  _desLog.fine("Filled object completly: ${filler}");
  return obj;
}

/// Checks if the [type] is either [bool], [String], [int], [num], [double], or [dynamic]
bool isPrimitiveType(Type type) =>
    type == bool || type == String || type == int || type == num || type == double || type == dynamic;

/// Checks if the [type] is either primitive (see [isPrimitiveType]), List, Set, or Map;
bool isSimpleType(Type type) =>
    isPrimitiveType(type) || type == List || type == Map || type == Set;

/// Converts a list of objects to a list with a Class.
/* List | Set */
_convertGenericListOrSet(types, List fillerList) {
//  _desLog.fine('Converting generic list');
  var type = types[0],
      subType = types[1];
  var resultList = type == List ? [] : new Set();

  // ignore: undefined_method
  fillerList.forEach((item) => resultList.add(_convertValue(subType, item, "@LIST_ITEM")));

//  _desLog.fine("Created generic list: ${resultList}");
  return resultList;
}

Map _convertGenericMap(List subTypes, Map fillerMap) {
//  _desLog.fine('Converting generic map');
  var keyType = subTypes[0];
  var itemType = subTypes[1];
  Map resultMap = {};

  fillerMap.forEach((key, value) {
    var keyItem = _convertValue(keyType, key, "@MAP_KEY");
    var valueItem = _convertValue(itemType, value, "@MAP_VALUE");
    resultMap[keyItem] = valueItem;
//    _desLog.fine("Added item ${valueItem} to map key: ${keyItem}");
  });

//  _desLog.fine("Map converted completly");
  return resultMap;
}

/// Transforms the value of a field [key] to the correct value.
///  returns Deserialized value
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [NoConstructorError]
Object _convertValue(/*Type | List<Type>*/ valueType, Object value, [String key = '@OBJECT']) {
//  _desLog.fine(() => "Converting (\"${key}\": $value) to ${valueType}");

  // if valueType is `List<SomeClass> or Map<SomeClass0, SomeClass1>`
  if (valueType is List) {
//    _desLog.fine('Handle generic');
    // handle generic lists
    if (valueType[0] == List || valueType[0] == Set) {
      return _convertGenericListOrSet(valueType, value);
    } else if (valueType[0] == Map) {
      // handle generic maps
      return _convertGenericMap(valueType[1], value);
    }
    return null;
  } else if (valueType == String) {
    if (value is String) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, 'String', key);
    }
  } else if (valueType == num) {
    if (value is num) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, 'num', key);
    }
  } else if (valueType == int) {
    if (value is int) {
      return value;
    } else if (value is double) {
      return value.toInt();
    } else {
      throw new IncorrectTypeTransform(value, 'int', key);
    }
  } else if (valueType == double) {
    if (value is double) {
      return value;
    } else if (value is int) {
      return value.toDouble();
    } else {
      throw new IncorrectTypeTransform(value, 'double', key);
    }
  } else if (valueType == bool) {
    if (value is bool) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, 'bool', key);
    }
  } else if (valueType == Map) {
    if (value is Map) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, 'Map', key);
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
  ClassMirror classMirror = reflectType(type);
//  _desLog.fine("Parsing to class: ${type}");

  if (classMirror.isEnum) {
    return classMirror.values[filler];
  }

  String constrMethod = null;
  List positionalParams = [];
  Map<String, dynamic> namedParameters = {};

  classMirror.constructors.forEach((constructorName, constructor) {
//    _desLog.fine('Found constructor function: ${constructorName}');
    if (constructorName.isEmpty) {
      if (constructor.parameters.length == 0) {
        constrMethod = constructorName;
      } else {
        bool onlyOptionalOrImmutable = false;
        constructor.parameters.forEach((p) {
          if (!p.isRequired) {
            onlyOptionalOrImmutable = true;
          } else {
            var pName = p.name;
            var fieldDecl = classMirror.fields[pName];

            if (fieldDecl?.isFinal == true) {
              // check if the property is renamed by Property annotation
              SerializedName prop = fieldDecl.annotations?.firstWhere((a) => a is SerializedName, orElse: () => null);
              if (prop?.name != null) {
                pName = prop.name;
              }

//              _desLog.fine('Try to pass parameter: ${parameterName}: ${filler[parameterName]}');

              if (p.isNamed) {
                namedParameters[p.name] = filler[pName];
              } else {
                positionalParams.add(filler[pName]);
              }
              onlyOptionalOrImmutable = true;
            }
          }
        });

        if (onlyOptionalOrImmutable) {
          constrMethod = constructorName;
        }
      }
    }
  });

  Object obj;
  if (constrMethod != null) {
//    _desLog.fine("Found constructor: \"${constrMethod}\"");
    obj = classMirror.constructors[constrMethod](positionalParams, namedParameters);
    if (classMirror.setters == null) return obj;
//    _desLog.fine("Created instance of type: ${classMirror.name}");
  } else {
//    _desLog.fine("No constructor found.");
    throw new NoConstructorError(classMirror);
  }

  return _fillObject(obj, filler);
}
