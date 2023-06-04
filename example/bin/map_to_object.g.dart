// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_to_object.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$EntityClassSerializable on SerializableMap {
  String? get name;
  String? get _setted;
  bool? get otherName;
  String? get notVisible;
  List<EntityClass>? get children;
  String? get setted;
  set name(String? v);
  set _setted(String? v);
  set otherName(bool? v);
  set notVisible(String? v);
  set children(List<EntityClass>? v);
  set setted(String? v);

  operator [](Object? __key) {
    switch (__key) {
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
      case 'setted':
        return setted;
    }
    throwFieldNotFoundException(__key, 'EntityClass');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
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
        children = fromSerialized(__value, [
          () => List<EntityClass>.empty(growable: true),
          () => EntityClass()
        ]);
        return;
      case 'setted':
        setted = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'EntityClass');
  }

  Iterable<String> get keys => EntityClassClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_EntityClass__Constructor([positionalParams, namedParams]) => EntityClass();

const $$EntityClass_fields_name = DeclarationMirror(name: 'name', type: String);
const $$EntityClass_fields__setted =
    DeclarationMirror(name: '_setted', type: String);
const $$EntityClass_fields_otherName = DeclarationMirror(
  name: 'renamed',
  type: bool,
);
const $$EntityClass_fields_notVisible =
    DeclarationMirror(name: 'notVisible', type: String, annotations: [ignore]);
const $$EntityClass_fields_children =
    DeclarationMirror(name: 'children', type: [List, EntityClass]);
const $$EntityClass_fields_setted =
    DeclarationMirror(name: 'setted', type: String);

const EntityClassClassMirror = ClassMirror(
    name: 'EntityClass',
    constructors: {
      '': FunctionMirror(name: '', $call: _EntityClass__Constructor)
    },
    fields: {
      'name': $$EntityClass_fields_name,
      '_setted': $$EntityClass_fields__setted,
      'renamed': $$EntityClass_fields_otherName,
      'notVisible': $$EntityClass_fields_notVisible,
      'children': $$EntityClass_fields_children,
      'setted': $$EntityClass_fields_setted
    },
    getters: ['name', '_setted', 'renamed', 'notVisible', 'children', 'setted'],
    setters: ['name', '_setted', 'renamed', 'notVisible', 'children', 'setted'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({EntityClass: EntityClassClassMirror});
}
