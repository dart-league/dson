part of dson;

final _desLog = new Logger('object_mapper_deserializer');

/// Creates a new instance of [clazz], parses the json in [jsonStr] and puts
/// the data into the new instance.
///  Returns new instance of [clazz]
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
dynamic deserialize(String jsonStr, Type clazz) {
  Map filler = JSON.decode(jsonStr);
  //TODO: add unit test for this block.
  if([SN_INT, SN_NUM, SN_BOOL, SN_STRING].any((v) => v == clazz.toString())) {
    return filler;
  } else if(clazz.toString() == SN_MAP) {
    //TODO: check if the map contains complex objects
    return filler;
  }

  Object obj = _initiateClass(serializable.reflectType(clazz));
  _fillObject(obj, filler);

  return obj;
}

/// Creates a list with instances of [clazz] and puts the data of the parsed json
/// of [jsonStr] into the instances.
///   Returns A list of objects of [clazz].
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
List deserializeList(String jsonStr, Type clazz) {
  List returnList = [];
  List filler = JSON.decode(jsonStr);
  if([SN_INT, SN_NUM, SN_BOOL, SN_STRING].any((v) => v == clazz.toString())) {
    return filler;
  }
  filler.forEach((item) {
    Object obj = _initiateClass(serializable.reflectType(clazz));
    _fillObject(obj, item);
    returnList.add(obj);
  });
  
  return returnList;
}

/// Creates a new instance of [clazz] and maps the data of [dataObject] into it.
///  Returns new instance of [clazz]
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
dynamic map(Map dataObject, Type clazz) {
  Object obj = _initiateClass(serializable.reflectType(clazz));
  _fillObject(obj, dataObject);

  return obj;
}

/// Creates a list with instances of [clazz] and maps the data of [dataMap] into
/// each instance.
///   Returns A list of objects of [clazz].
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
List mapList(List<Map> dataMap, Type clazz) {
  List returnList = [];
  dataMap.forEach((item) {
    Object obj = _initiateClass(serializable.reflectType(clazz));
    _fillObject(obj, item);
    returnList.add(obj);
  });

  return returnList;
}

/// Filles an [object] with the data of [dataObject] and returns the [object].
///  Throws [NoConstructorError] if [clazz] or Classes used inside [clazz] do not
///    have a constructor without or only optional arguments.
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [FormatException] if the [jsonStr] is not valid JSON text.
dynamic fill(Map dataObject, Object object) {
  _fillObject(serializable.reflect(object), dataObject);
  return object;
}

/// Puts the data of the [filler] into the object in [objMirror]
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
void _fillObject(Object obj, Map filler) {
  var objMirror = serializable.reflect(obj);
  var classMirror = objMirror.type;

  getPublicVariablesAndSettersFromClass(classMirror, serializable).forEach((varName, decl) {
    if (!decl.isPrivate && (decl is VariableMirror || decl is MethodMirror)) {
      String fieldName = varName;
      TypeMirror valueType;
      
      // if it's a setter function we need to change the name
      if (decl is MethodMirror && decl.isSetter) {
        fieldName = varName = varName.substring(0, varName.length - 1);
        _desLog.fine('Found setter function varName: ' + varName);
        valueType = decl.parameters[0].type;
      } else if (decl is VariableMirror) {
        valueType = decl.type;
      } else {
        return;
      }
      
      // check if the property is renamed by Property annotation
      Property prop = new GetValueOfAnnotation<Property>().fromDeclaration(decl);
      if (prop != null && prop.name != null) {
        fieldName = prop.name;
      }
      
      _desLog.fine('Try to fill object with: ${fieldName}: ${filler[fieldName]}');
      
      if (filler[fieldName] != null) {
        objMirror.invokeSetter(varName, _convertValue(valueType, filler[fieldName], varName));
      }
    }    
  });
  
  _desLog.fine("Filled object completly: ${filler}");
}

bool _isSimpleType(Type type) {
  return type == List || type == bool || type == String || type == num || type == Map || type == dynamic;
}

bool _hasOnlySimpleTypeArguments(ClassMirror mirr) {
  bool hasOnly = true;

  try {
    mirr.typeArguments.forEach((ta) {
      if (ta is ClassMirror) {
        if (!_isSimpleType(ta.reflectedType)) {
          hasOnly = false;
        }
      }
    });
  } catch (e) {
    _desLog.fine("${mirr.qualifiedName} contains dynamic arguments");
  }
  
  return hasOnly;
}

/// Converts a list of objects to a list with a Class.
List _convertGenericList(ClassMirror listMirror, List fillerList) {
  _desLog.fine('Converting generic list');
  ClassMirror itemMirror = listMirror.typeArguments[0];
  Object resultList = _initiateClass(listMirror);
  
  fillerList.forEach((item) {
    (resultList as List).add(_convertValue(itemMirror, item, "@LIST_ITEM"));
  });
  
  _desLog.fine("Created generic list: ${resultList}");
  return resultList;
}

Map _convertGenericMap(ClassMirror mapMirror, Map fillerMap) {
  _desLog.fine('Converting generic map');
  ClassMirror itemMirror = mapMirror.typeArguments[1];
  ClassMirror keyMirror = mapMirror.typeArguments[0];
  Map resultMap = _initiateClass(mapMirror);

  fillerMap.forEach((key, value) {
    var keyItem = _convertValue(keyMirror, key, "@MAP_KEY");
    var valueItem = _convertValue(itemMirror, value, "@MAP_VALUE");
    resultMap[keyItem] = valueItem;
    _desLog.fine("Added item ${valueItem} to map key: ${keyItem}");
  });
 
  _desLog.fine("Map converted completly");
  return resultMap;
}

/// Transforms the value of a field [key] to the correct value.
///  returns Deserialized value
///  Throws [IncorrectTypeTransform] if json data types doesn't match.
///  Throws [NoConstructorError]
Object _convertValue(TypeMirror valueType, Object value, String key) {
  _desLog.fine("Convert \"${key}\": $value to ${valueType.qualifiedName}");
  if (_desLog.isLoggable(Level.FINE)) {
    if (valueType is ClassMirror) {
      _desLog.fine("$key: original: ${valueType.isOriginalDeclaration} " + "reflected: ${valueType.hasReflectedType} symbol: ${valueType.qualifiedName} " + "original: ${valueType.reflectedType} is " + "simple ${_isSimpleType(valueType.reflectedType)}");
    }
  }

  if (valueType is ClassMirror && !valueType.isOriginalDeclaration && valueType.hasReflectedType && !_hasOnlySimpleTypeArguments(valueType)) {

    ClassMirror varMirror = valueType;

    _desLog.fine('Handle generic');
    // handle generic lists
    if (varMirror.simpleName == SN_LIST) {
      return _convertGenericList(varMirror, value);
    } else if (varMirror.simpleName == SN_MAP) {
      // handle generic maps
      return _convertGenericMap(varMirror, value);
    }
  } else if (valueType.simpleName == SN_STRING) {
    if (value is String) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, SN_STRING, key);
    }
  } else if (valueType.simpleName == SN_NUM) {
    if (value is num || value is int) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, SN_NUM, key);
    }
  } else if (valueType.simpleName == SN_INT) {
    if (value is int || value is num) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, SN_INT, key);
    }
  } else if (valueType.simpleName == SN_BOOL) {
    if (value is bool) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, SN_BOOL, key);
    }
  } else if (valueType.simpleName == SN_LIST) {
    if (value is List) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, SN_LIST, key);
    }
  } else if (valueType.simpleName == SN_MAP) {
    if (value is Map) {
      return value;
    } else {
      throw new IncorrectTypeTransform(value, SN_MAP, key);
    }
  } else if (valueType.simpleName == SN_OBJECT) {
    return value;
  } else if (valueType.simpleName == SN_DATETIME) {
    return DateTime.parse(value);
  } else {
    var obj = _initiateClass(valueType);
    
    if (!(value is String) && !(value is num)  && !(value is bool)) {
      _fillObject(obj, value);
    } else {
      throw new IncorrectTypeTransform(value, valueType.qualifiedName, key);
    }
    
    return obj;
  }

  return value;
}

/// Initiates an instance of [classMirror] by using an empty constructor name.
/// Therefore the class needs to contain a simple constructor. For example:
/// <code>
///  class TestClass {
///    String name;
///
///    TestClass(); // or TestClass([this.name])
///  }
/// </code>
///  Throws [NoConstructorError] if the class doesn't have a constructor without or
///    only with optional arguments.
Object _initiateClass(ClassMirror classMirror) {
  _desLog.fine("Parsing to class: ${classMirror.qualifiedName}");
  String constrMethod = null;
  
  classMirror.declarations.forEach((declName, decl) {
    if (decl is MethodMirror && decl.isConstructor) {
      _desLog.fine('Found constructor function: ${decl.qualifiedName}');
      if (decl.constructorName.isEmpty) {
        if (decl.parameters.length == 0) {
          constrMethod = decl.constructorName;
        } else {
          bool onlyOptional = true;
          decl.parameters.forEach((p) => !p.isOptional && (onlyOptional = false));

          if (onlyOptional) {
            constrMethod = decl.constructorName;
          }
        }
      }
    }
  });
  
  Object obj;
  if (constrMethod != null) {
    _desLog.fine("Found constructor: \"${constrMethod}\"");
    obj = classMirror.newInstance("", []);
    _desLog.fine("Created instance of type: ${classMirror.qualifiedName}");
  } else if (classMirror.qualifiedName == SN_LIST) {
    _desLog.fine('No constructor for list found, try to run empty one');
    obj = [];
  } else if (classMirror.qualifiedName == SN_MAP) {
    _desLog.fine('No constructor for map found');
    obj = {};
  } else {
    _desLog.fine("No constructor found.");
    throw new NoConstructorError(classMirror);     
  }    

  return obj;
}
