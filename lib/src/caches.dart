part of dson;

Map _uIdFromClassCache = {};

/// gets the name of the attribute annotated with `@uId`, if there is none then returns 'id'
String _getUIdAttrFromClass(ClassMirror cm) =>
    _uIdFromClassCache.putIfAbsent(cm, () =>
    cm.fields.values
        .firstWhere((v) => v.annotations?.contains((a) => a == uId) ?? false, orElse: () => null)
        ?.name ?? 'id'
    );

/// Checks if the annotation [ignored] is over the [declaration]
bool _getIsIgnoredFromDeclaration(DeclarationMirror declaration) =>
    declaration.annotations?.any((a) => a == ignore) ?? false;

/// Cheks if the annotation [Cyclical] is not over the class of the object
_isCyclical(ClassMirror cm) =>
    cm.annotations?.any((a) => a is _Cyclical) ?? false;
