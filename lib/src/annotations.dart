part of dson;

/**
 * Annotation that tells parser to ignore a variable or getter
 */
const ignore = const _Ignore();

class _Ignore {
  const _Ignore();
}

/**
 * Function used to get if the variable should be ignored
 */
typedef bool IgnoreIfFunction({var user, var orig_val, var current_val});

/**
 * Annotation that tells parser to ignore the variable if the [ignoreIfFunction] returns true
 */
class IgnoreIf {
  final IgnoreIfFunction ignoreIfFunction;
  const IgnoreIf(this.ignoreIfFunction);
}

/**
 * Annotation class to describe properties of a class member.
 */
class SerializedName {
  final String name;
  
  const SerializedName(this.name);
  
  String toString() => "DartsonProperty: Name: ${name}";
}

///this annotation describes if the objects contains cyclical reference to other objects
const cyclical = const _Cyclical();

class _Cyclical {
  const _Cyclical();
}

/// This annotation specifies the object can be serialized
class Serializable extends Reflectable {
  const Serializable() : super(
      typeAnnotationQuantifyCapability,
      superclassQuantifyCapability,
      invokingCapability,
      declarationsCapability,
      metadataCapability,
      newInstanceCapability,
      typeRelationsCapability,
      typeCapability);
}

/// This annotation specifies the object can be serialized
const serializable = const Serializable();
