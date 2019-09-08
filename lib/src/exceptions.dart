part of dson;

/**
 * This exception is thrown if the parser tries to convert
 * a value of a different type.
 */
class IncorrectTypeTransform extends Error {
  final String _field;
  final String _type;
  final String _foundType;

  IncorrectTypeTransform(Object value, String type, [String key = "unknown"]) :
    _type = type,
    _field = key,
    _foundType = reflectType(value.runtimeType)?.name ?? value.runtimeType.toString();


  String toString() => "IncorrectTypeTransform: Cannot transform field \"${_field}\" because of incorrect " +
      "type. Requires [${_type}] and found [${_foundType}]";
}

/**
 * This exception is thrown when a Class of [mirr] should be initiated but
 * doesn't have a constructor without or only optional arguments.
 */
class NoConstructorError extends Error {
  final String _clazz;

  NoConstructorError(ClassMirror mirr) :
    _clazz = mirr.name;

  String toString() => "No constructor found: Class [${_clazz}] doesn't either have a " +
        "constructor without arguments or arguments matching final fields.";
}

/**
 * This exception only appears in JavaScript if the [ENTITY_MAP] doesn't contain
 * a description of a Class which dartson tries to parse.
 */
class EntityDescriptionMissing extends Error {
  final String _clazz;

  EntityDescriptionMissing(ClassMirror cm) :
    _clazz = cm.name;

  String toString() => "EntityDescription missing: Entity ${_clazz} is not descriped in ENTITY_MAP.";
}
