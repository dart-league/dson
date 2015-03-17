part of dson;

Logger _serLog = new Logger('object_mapper_serializer');

Map<Object, Map> _serializedStack = {};

bool isPrimitive(var value) => value is String || value is num || value is bool || value == null;

bool isSimple(var value) => isPrimitive(value) || value is DateTime || value is List || value is Map;

/**
 * Serializes the [object] to a JSON string.
 */
String serialize(object, {bool parseString: false, depth, exclude}) {
  _serLog.fine("Start serializing");

  if (object is String && !parseString) return object;
  
  var result = JSON.encode(objectToSerializable(object, depth: depth, exclude: exclude));

  _serializedStack.clear();

  return result;
}

Object objectToSerializable(obj, {depth, exclude, String fieldName}) {
  if (isPrimitive(obj)) {
    _serLog.fine("Found primetive: $obj");
    return obj;
  } else if (obj is DateTime) {
    _serLog.fine("Found DateTime: $obj");
    return obj.toIso8601String();
  } else if (obj is List) {
    _serLog.fine("Found list: $obj");
    return _serializeList(obj, depth, exclude, fieldName);
  } else if (obj is Map) {
    _serLog.fine("Found map: $obj");
    return _serializeMap(obj);
  } else {
    _serLog.fine("Found object: $obj");
    return _serializeObject(obj, depth, exclude, fieldName);
  }
}

List _serializeList(List list, depth, exclude, String fieldName) {
  List newList = [];

  list.forEach((item) {
    newList.add(objectToSerializable(item, depth: depth, exclude: exclude, fieldName: fieldName));
  });

  return newList;
}

Map _serializeMap(Map map) {
  Map newMap = new Map<String, Object>();
  map.forEach((key, val) {
    if (val != null) {
      newMap[key] = objectToSerializable(val);
    }
  });

  return newMap;
}

/**
 * Runs through the Object keys by using a ClassMirror.
 */
Object _serializeObject(obj, depth, exclude, fieldName) {
  InstanceMirror instMirror = reflect(obj);
  ClassMirror classMirror = instMirror.type;
  _serLog.fine("Serializing class: ${_getName(classMirror.qualifiedName)}");

  Map result = new Map<String, dynamic>();

  if (_serializedStack[obj] == null) {

    var publicVariables = getPublicVariablesAndGettersFromClass(classMirror);
    depth = _getNextDepth(depth, fieldName);
    if (depth != null || !_isCiclical(obj, instMirror) || fieldName == null) {
      publicVariables.forEach((sym, decl) {
        _pushField(sym, decl, instMirror, result, depth, exclude);
      });

      _serializedStack[obj] = result;
    }
    
    if (_isCiclical(obj, instMirror)) {
      if (publicVariables[#id] == null) {
        result['hashcode'] = obj.hashCode;
      } else {
        result['id'] = obj.id;
      }
    }

  } else {
    result = _serializedStack[obj];
  }

  _serLog.fine("Serialization completed.");
  return result;
}

/**
 * Checks the DeclarationMirror [variable] for annotations and adds
 * the value to the [result] map. If there's no [Property] annotation 
 * with a different name set it will use the name of [symbol].
 */
void _pushField(Symbol symbol, DeclarationMirror variable, InstanceMirror instMirror, Map<String, dynamic> result, depth, exclude) {

  String fieldName = _getName(symbol);
  if (fieldName.isEmpty) return;

  InstanceMirror field = instMirror.getField(symbol);
  Object value = field.reflectee;
  _serLog.finer("Start serializing field: ${fieldName}");

  // check if there is a DartsonProperty annotation
  Property prop = new GetValueOfAnnotation<Property>().fromDeclaration(variable);
  _serLog.finest("Property Annotation: ${prop}");

  if (prop != null && prop.name != null) {
    _serLog.finer("Field renamed to: ${prop.name}");
    fieldName = prop.name;
  }


  _serLog.finer("depth: $depth");

  //If the value is not null and the annotation @ignore is not on variable declaration
  if (value != null && !new IsAnnotation<_Ignore>().onDeclaration(variable)
      // And exclude is pressent
      && (exclude == null
        // or exclude is Map (we are excluding nested attribute)
        || exclude is Map
        // or exclude is String and fieldName distinct of exclude (we exclude this attribute)
        || exclude is String && fieldName != exclude
        // or exclude is List and exclude contains this fieldName (we exclude this attribute)
        || exclude is List && !exclude.contains(fieldName))) {

    _serLog.finer("Serializing field: ${fieldName}");

    result[fieldName] = objectToSerializable(value,
        depth: depth,
        exclude: _getNext(exclude, fieldName),
        fieldName: fieldName);
  }
}

_isCiclical(value, InstanceMirror im) => !isSimple(value) && new IsAnnotation<Cyclical>().onInstance(im);


_getNextDepth(depth, String fieldName) {
  if(fieldName != null) {
    return _getNext(depth, fieldName);
  } else {
    return depth;
  }
}

_getNext(excludeOrDepth, String fieldName) {
  if (excludeOrDepth is List) {
    excludeOrDepth = excludeOrDepth.firstWhere((e) => //
        e == fieldName || e is Map && e.keys.contains(fieldName), orElse: () => null);
  }
  
  if(excludeOrDepth is Map) return excludeOrDepth[fieldName];
  
  if(excludeOrDepth is String && excludeOrDepth == fieldName) return excludeOrDepth;
}