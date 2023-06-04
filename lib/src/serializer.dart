part of dson;

//Logger _serLog = Logger('object_mapper_serializer');

/// Variable that save all the serialized objects. If an object 
/// has been serialized in the past is going to be saved by this variable
/// and is not going to be serialized again.
var _serializedStack = <Object, Map>{};

/// Checks if the [value] is primitive (String, number, boolean or null)
bool isPrimitive(value) => value is String || value is num || value is bool || value == null;

/// Checks if the [value] is primitive, [DateTime], [List], or [Map]
bool isSimple(value) => isPrimitive(value) || value is DateTime || value is List || value is Map || value is Set;

/// Serializes the [object] to a JSON string.
/// 
/// Parameters:
/// 
/// [expand] :  determines how deep is going to be the serialization and avoids stack overflow produced by cyclical object references.
/// [exclude] : exclude some attributes. It could be [String], [Map], or [List]
String toJson(object, {bool parseString = false, expand, exclude}) {
//  _serLog.fine("Start serializing");

  if (!parseString && object is String) return object;

  var result = json.encode(objectToSerializable(object, expand: expand, exclude: exclude));

  _serializedStack.clear();

  return result;
}


/// Converts the non-primitive [object] to a serializable [Map].
///
/// Parameters:
///
/// * [expand] :  determines how deep is going to be the serialization and avoids stack overflow produced by cyclical object references.
/// * [exclude] : exclude some attributes. It could be [String], [Map], or [List]
Map toMap(object, {expand, exclude, String fieldName = ''}) =>
    objectToSerializable(object, expand: expand, exclude: exclude);

/// Converts the [object] to a serializable [Map], [String], [int], [DateTime]
/// or any other serializable object.
/// 
/// Parameters:
/// 
/// * [expand] :  determines how deep is going to be the serialization and to avoid cyclical object reference stack overflow. 
/// * [exclude] : exclude some attributes. It could be [String], [Map], or [List]
dynamic objectToSerializable(object, {expand, exclude, String? fieldName}) {
  if (isPrimitive(object)) {
//    _serLog.fine("Found primetive: $object");
    return object;
  } else if (object is DateTime) {
//    _serLog.fine("Found DateTime: $object");
    return object.toIso8601String();
  } else if (object is List) {
//    _serLog.fine("Found list: $object");
    return _serializeList(object, expand, exclude, fieldName);
  } else if (object is! SerializableMap && object is Map) {
//    _serLog.fine("Found map: $object");
    return _serializeMap(object, expand, exclude, fieldName);
  } else if (object is Set) {
//    _serLog.fine("Found set: $object");
    return _serializeSet(object, expand, exclude, fieldName);
  } else {
//    _serLog.fine("Found object: $object");
    return _serializeObject(object, expand, exclude, fieldName);
  }
}

/// Converts a List into a serializable [List]
List _serializeList(List list, expand, exclude, String? fieldName) {
  List newList = [];

  list.forEach((item) {
    newList.add(objectToSerializable(item, expand: expand, exclude: exclude, fieldName: fieldName));
  });

  return newList;
}

/// Converts a List into a serializable [List]
List _serializeSet(Set set, expand, exclude, String? fieldName) {
  List newList = [];

  set.forEach((item) {
    newList.add(objectToSerializable(item, expand: expand, exclude: exclude, fieldName: fieldName));
  });

  return newList;
}


/// Converts a [Map] into a serializable [Map]
Map _serializeMap(Map map, expand, exclude, String? fieldName) {
  Map newMap = Map<String, Object>();
  map.forEach((key, val) {
    if (val != null) {
      newMap[key] = objectToSerializable(val, expand: expand, exclude: exclude, fieldName: fieldName);
    }
  });

  return newMap;
}

/// Runs through the Object keys by using a ClassMirror.
Object _serializeObject(obj, expand, exclude, fieldName) {
  var classMirror = reflect(obj);
//  _serLog.fine("Serializing class: ${classMirror.name}");

  if(classMirror!.isEnum) {
    return obj.index;
//    return {'index': obj.index, 'name': obj.toString().split(".")[1]};
  }

  var result = <String, dynamic>{};

  if (_serializedStack[obj] == null) {

    var publicVariables = classMirror.fields;
    expand = _getNextExpand(expand, fieldName);
    if (expand != null || !_isCyclical(classMirror) || fieldName == null) {
      publicVariables?.forEach((fieldName, decl) {
        if(!fieldName.startsWith('_')) _pushField(fieldName, decl, obj, result, expand, exclude);
      });

      _serializedStack[obj] = result;
    }

    if (_isCyclical(classMirror)) {
      var uIdField = _getUIdAttrFromClass(classMirror);
      if (publicVariables?[uIdField] == null) {
        result['hashcode'] = obj.hashCode;
      } else {
        result[uIdField] = obj[uIdField];
      }
    }

  } else {
    result = _serializedStack[obj] as Map<String, dynamic>;
  }

//  _serLog.fine("Serialization completed.");
  return result;
}

/// Checks the DeclarationMirror [variable] for annotations and adds
/// the value to the [result] map. If there's no [SerializedName] annotation
/// with a different name set it will use the name of [symbol].
void _pushField(String fieldName, DeclarationMirror variable, SerializableMap obj, Map<String, dynamic> result, expand, exclude) {

  if (fieldName.isEmpty) return;

//  InstanceMirror field = instMirror.invokeGetter(fieldName);
  Object? value = obj[fieldName];
//  _serLog.finer("Start serializing field: ${fieldName}");

  fieldName = variable.name;
  // check if there is a DsonProperty annotation

//  _serLog.finer("expand: $expand");

  //If the value is not null and the annotation @ignore is not on variable declaration
  if (value != null && !_getIsIgnoredFromDeclaration(variable)
      // And exclude is present
      && (exclude == null
          // or exclude is Map (we are excluding nested attribute)
          || exclude is Map
          // or exclude is String and fieldName distinct of exclude (we exclude this attribute)
          || exclude is String && fieldName != exclude
          // or exclude is List and exclude contains this fieldName (we exclude this attribute)
          || exclude is List && !exclude.contains(fieldName))) {

//    _serLog.finer("Serializing field: ${fieldName}");

    result[fieldName] = objectToSerializable(value,
        expand: expand,
        exclude: _getNext(exclude, fieldName),
        fieldName: fieldName);
  }
}

/// Gets the next expand from the actual expand for the nested attribute with name [fieldName]
_getNextExpand(expand, String? fieldName) {
  if(fieldName != null) {
    return _getNext(expand, fieldName);
  } else {
    return expand;
  }
}

/// Gets the next [excludeOrExpand] for the nested attribute with name [fieldName]
_getNext(excludeOrExpand, String fieldName) {
  if (excludeOrExpand is List) {
    excludeOrExpand = excludeOrExpand.firstWhereOrNull((e) => //
    e == fieldName || e is Map && e.keys.contains(fieldName));
  }

  if(excludeOrExpand is Map) return excludeOrExpand[fieldName];

  if(excludeOrExpand is String && excludeOrExpand == fieldName) return excludeOrExpand;
}
