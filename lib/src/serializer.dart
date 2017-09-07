part of dson;

//Logger _serLog = new Logger('object_mapper_serializer');

/// Variable that save all the serialized objects. If an object 
/// has been serilized in the past is going to be saved by this variable
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
/// [depth] :  determines how deep is going to be the serialization and to avoid cyclical object reference stack overflow. 
/// [exclude] : exclude some attributes. It could be [String], [Map], or [List]
String toJson(object, {bool parseString: false, depth, exclude}) {
//  _serLog.fine("Start serializing");

  if (!parseString && object is String) return object;

  var result = JSON.encode(objectToSerializable(object, depth: depth, exclude: exclude));

  _serializedStack.clear();

  return result;
}


/// Converts the non-primitive [object] to a serializable [Map].
///
/// Parameters:
///
/// * [depth] :  determines how deep is going to be the serialization and to avoid cyclical object reference stack overflow.
/// * [exclude] : exclude some attributes. It could be [String], [Map], or [List]
Map toMap(object, {depth, exclude, String fieldName}) =>
    objectToSerializable(object, depth: depth, exclude: exclude);

/// Converts the [object] to a serializable [Map], [String], [int], [DateTime]
/// or any other serializiable object.
/// 
/// Parameters:
/// 
/// * [depth] :  determines how deep is going to be the serialization and to avoid cyclical object reference stack overflow. 
/// * [exclude] : exclude some attributes. It could be [String], [Map], or [List]
Object objectToSerializable(object, {depth, exclude, String fieldName}) {
  if (isPrimitive(object)) {
//    _serLog.fine("Found primetive: $object");
    return object;
  } else if (object is DateTime) {
//    _serLog.fine("Found DateTime: $object");
    return object.toIso8601String();
  } else if (object is List) {
//    _serLog.fine("Found list: $object");
    return _serializeList(object, depth, exclude, fieldName);
  } else if (object is! SerializableMap && object is Map) {
//    _serLog.fine("Found map: $object");
    return _serializeMap(object, depth, exclude, fieldName);
  } else if (object is Set) {
//    _serLog.fine("Found set: $object");
    return _serializeSet(object, depth, exclude, fieldName);
  } else {
//    _serLog.fine("Found object: $object");
    return _serializeObject(object, depth, exclude, fieldName);
  }
}

/// Converts a List into a serializable [List]
List _serializeList(List list, depth, exclude, String fieldName) {
  List newList = [];

  list.forEach((item) {
    newList.add(objectToSerializable(item, depth: depth, exclude: exclude, fieldName: fieldName));
  });

  return newList;
}

/// Converts a List into a serializable [List]
List _serializeSet(Set set, depth, exclude, String fieldName) {
  List newList = [];

  set.forEach((item) {
    newList.add(objectToSerializable(item, depth: depth, exclude: exclude, fieldName: fieldName));
  });

  return newList;
}


/// Converts a [Map] into a serializable [Map]
Map _serializeMap(Map map, depth, exclude, String fieldName) {
  Map newMap = new Map<String, Object>();
  map.forEach((key, val) {
    if (val != null) {
      newMap[key] = objectToSerializable(val, depth: depth, exclude: exclude, fieldName: fieldName);
    }
  });

  return newMap;
}

/// Runs through the Object keys by using a ClassMirror.
Object _serializeObject(obj, depth, exclude, fieldName) {
//  InstanceMirror instMirror = serializable.reflect(obj);
  ClassMirror classMirror = reflectType(obj.runtimeType);
//  _serLog.fine("Serializing class: ${classMirror.name}");

  if(classMirror.isEnum) {
    return obj.index;
//    return {'index': obj.index, 'name': obj.toString().split(".")[1]};
  }

  var result = <String, dynamic>{};

  if (_serializedStack[obj] == null) {

    var publicVariables = classMirror.fields;
    depth = _getNextDepth(depth, fieldName);
    if (depth != null || !_isCiclical(classMirror) || fieldName == null) {
      publicVariables.forEach((fieldName, decl) {
        if(!fieldName.startsWith('_')) _pushField(fieldName, decl, obj, result, depth, exclude);
      });

      _serializedStack[obj] = result;
    }

    if (_isCiclical(classMirror)) {
      var uIdField = _getUIdAttrFromClass(classMirror);
      if (publicVariables[uIdField] == null) {
        result['hashcode'] = obj.hashCode;
      } else {
        result[uIdField] = obj[uIdField];
      }
    }

  } else {
    // ignore: strong_mode_down_cast_composite
    result = _serializedStack[obj];
  }

//  _serLog.fine("Serialization completed.");
  return result;
}

Map _uIdFromClassCache = {};

String _getUIdAttrFromClass(ClassMirror cm) =>
    (_uIdFromClassCache
      ..putIfAbsent(cm, () =>
        cm.fields.values
            .firstWhere((v) => v.annotations?.contains((a) => a == uId) ?? false, orElse: () => null)
            ?.name ?? 'id'
      )
    )[cm];

/// Checks the DeclarationMirror [variable] for annotations and adds
/// the value to the [result] map. If there's no [SerializedName] annotation
/// with a different name set it will use the name of [symbol].
void _pushField(String fieldName, DeclarationMirror variable, SerializableMap obj, Map<String, dynamic> result, depth, exclude) {

  if (fieldName.isEmpty) return;

//  InstanceMirror field = instMirror.invokeGetter(fieldName);
  Object value = obj[fieldName];
//  _serLog.finer("Start serializing field: ${fieldName}");

  // check if there is a DartsonProperty annotation
  SerializedName prop = variable.annotations?.firstWhere((a) => a is SerializedName, orElse: () => null);
//  _serLog.finest("Property Annotation: ${prop}");

  if (prop?.name != null) {
//    _serLog.finer("Field renamed to: ${prop.name}");
    fieldName = prop.name;
  }


//  _serLog.finer("depth: $depth");

  //If the value is not null and the annotation @ignore is not on variable declaration
  if (value != null && !(variable.annotations?.any((a) => a is _Ignore) ?? false)
      // And exclude is pressent
      && (exclude == null
        // or exclude is Map (we are excluding nested attribute)
        || exclude is Map
        // or exclude is String and fieldName distinct of exclude (we exclude this attribute)
        || exclude is String && fieldName != exclude
        // or exclude is List and exclude contains this fieldName (we exclude this attribute)
        || exclude is List && !exclude.contains(fieldName))) {

//    _serLog.finer("Serializing field: ${fieldName}");

    result[fieldName] = objectToSerializable(value,
        depth: depth,
        exclude: _getNext(exclude, fieldName),
        fieldName: fieldName);
  }
}

/// Cheks if the value is not Simple (primitive, datetime, List, or Map)
/// and if the annotation [Cyclical] is not over the class of the object
_isCiclical(ClassMirror cm) =>
  cm.annotations?.any((a) => a is _Cyclical) ?? false;

/// Gets the next depth from the actual depth for the nested attribute with name [fieldName]
_getNextDepth(depth, String fieldName) {
  if(fieldName != null) {
    return _getNext(depth, fieldName);
  } else {
    return depth;
  }
}

/// Gets the next [excludeOrDepth] for the nested attribute with name [fieldName]
_getNext(excludeOrDepth, String fieldName) {
  if (excludeOrDepth is List) {
    excludeOrDepth = excludeOrDepth.firstWhere((e) => //
        e == fieldName || e is Map && e.keys.contains(fieldName), orElse: () => null);
  }

  if(excludeOrDepth is Map) return excludeOrDepth[fieldName];

  if(excludeOrDepth is String && excludeOrDepth == fieldName) return excludeOrDepth;
}