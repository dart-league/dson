// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.map_to_object;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$EntityClassSerializable extends SerializableMap {
  String get setted;
  String get name;
  String get _setted;
  bool get otherName;
  String get notVisible;
  List<EntityClass> get children;
  set setted(String v);
  set name(String v);
  set _setted(String v);
  set otherName(bool v);
  set notVisible(String v);
  set children(List<EntityClass> v);

  operator [](Object __key) {
    switch (__key) {
      case 'setted':
        return setted;
      case 'name':
        return name;
      case '_setted':
        return _setted;
      case 'renamed':
        return otherName;
      case 'notVisible':
        return notVisible;
      case 'children':
        return children;
    }
    throwFieldNotFoundException(__key, 'EntityClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'setted':
        setted = __value;
        return;
      case 'name':
        name = __value;
        return;
      case '_setted':
        _setted = __value;
        return;
      case 'renamed':
        otherName = __value;
        return;
      case 'notVisible':
        notVisible = __value;
        return;
      case 'children':
        children = fromSerialized(
            __value, [() => new List<EntityClass>(), () => new EntityClass()]);
        return;
    }
    throwFieldNotFoundException(__key, 'EntityClass');
  }

  Iterable<String> get keys => EntityClassClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_EntityClass__Constructor([positionalParams, namedParams]) => new EntityClass();

const $$EntityClass_fields_name =
    const DeclarationMirror(name: 'name', type: String);
const $$EntityClass_fields__setted =
    const DeclarationMirror(name: '_setted', type: String);
const $$EntityClass_fields_otherName = const DeclarationMirror(
  name: 'renamed',
  type: bool,
);
const $$EntityClass_fields_notVisible = const DeclarationMirror(
    name: 'notVisible', type: String, annotations: const [ignore]);
const $$EntityClass_fields_children =
    const DeclarationMirror(name: 'children', type: const [List, EntityClass]);
const $$EntityClass_fields_setted =
    const DeclarationMirror(name: 'setted', type: String);

const EntityClassClassMirror =
    const ClassMirror(name: 'EntityClass', constructors: const {
  '': const FunctionMirror(name: '', $call: _EntityClass__Constructor)
}, fields: const {
  'name': $$EntityClass_fields_name,
  '_setted': $$EntityClass_fields__setted,
  'renamed': $$EntityClass_fields_otherName,
  'notVisible': $$EntityClass_fields_notVisible,
  'children': $$EntityClass_fields_children,
  'setted': $$EntityClass_fields_setted
}, getters: const [
  'setted',
  'name',
  '_setted',
  'renamed',
  'notVisible',
  'children'
], setters: const [
  'setted',
  'name',
  '_setted',
  'renamed',
  'notVisible',
  'children'
]);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({EntityClass: EntityClassClassMirror});
}
