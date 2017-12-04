part of dson;

Map<DeclarationMirror, String> _propNameCache = {};

/// If the [declaration] is annotated with `@SerializedName` then it returns the value of the annotation,
/// if not it returns the default [varName]
String _getFieldNameFromDeclaration(DeclarationMirror declaration) =>
    declaration.annotations == null
        ? declaration.name
        : _propNameCache.putIfAbsent(declaration, () =>
            (declaration.annotations.firstWhere((a) => a is SerializedName, orElse: () => null) as SerializedName)?.name ??
                declaration.name);

Map _uIdFromClassCache = {};

/// gets the name of the attribute annotated with `@uId`, if there is none then returns 'id'
String _getUIdAttrFromClass(ClassMirror cm) =>
    _uIdFromClassCache.putIfAbsent(cm, () =>
    cm.fields.values
        .firstWhere((v) => v.annotations?.contains((a) => a == uId) ?? false, orElse: () => null)
        ?.name ?? 'id'
    );

Map<DeclarationMirror, bool> _isIgnoredChace = {};

bool _getIsIgnoredFromDeclaration(DeclarationMirror declaration) =>
    declaration.annotations == null
    ? false
    : _isIgnoredChace.putIfAbsent(declaration, () => declaration.annotations.any((a) => a is _Ignore));