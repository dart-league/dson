part of dson;

/**
 * Annotation that tells parser to ignore a variable or getter
 */
const ignore = const _Ignore();

class _Ignore extends Annotation {
  const _Ignore();
}

/**
 * Function used to get if the variable should be ignored
 */
typedef bool IgnoreIfFunction({var user, var orig_val, var current_val});

/**
 * Annotation that tells parser to ignore the variable if the [ignoreIfFunction] returns true
 */
class IgnoreIf extends Annotation {
  final IgnoreIfFunction ignoreIfFunction;
  const IgnoreIf(this.ignoreIfFunction);
}

/**
 * Annotation class to describe properties of a class member.
 */
class SerializedName extends Annotation {
  final String name;
  
  const SerializedName(this.name);
  
  String toString() => "DartsonProperty: Name: ${name}";
}

///this annotation describes if the objects contains cyclical reference to other objects
const cyclical = const _Cyclical();

class _Cyclical extends Annotation {
  const _Cyclical();
}

/// sets which attribute will be used as unique identifier
const uId = const _UId();

class _UId extends Annotation {
  const _UId();
}