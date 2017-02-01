// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.json_to_object;

// **************************************************************************
// Generator: InitClassMirrorsGenerator
// Target: library example.json_to_object
// **************************************************************************

_initClassMirrors() => initClassMirrors({EntityClass: EntityClassClassMirror});

// **************************************************************************
// Generator: DsonGenerator
// Target: class EntityClass
// **************************************************************************

abstract class _$EntityClassSerializable extends SerializableMap {
  get name;
  get _setted;
  get otherName;
  get notVisible;
  get children;
  get setted;
  set name(v);
  set _setted(v);
  set otherName(v);
  set notVisible(v);
  set children(v);
  set setted(v);

  operator [](String key) {
    switch (key) {
      case 'name':
        return name;
      case '_setted':
        return _setted;
      case 'otherName':
        return otherName;
      case 'notVisible':
        return notVisible;
      case 'children':
        return children;
      case 'setted':
        return setted;
    }
    throwFieldNotFoundException(key, "EntityClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'name':
        name = value;
        return;
      case '_setted':
        _setted = value;
        return;
      case 'otherName':
        otherName = value;
        return;
      case 'notVisible':
        notVisible = value;
        return;
      case 'children':
        children = value;
        return;
      case 'setted':
        setted = value;
        return;
    }
    throwFieldNotFoundException(key, "EntityClass");
  }

  get keys => const [
        'name',
        '_setted',
        'otherName',
        'notVisible',
        'children',
        'setted'
      ];
}

_EntityClass__Constructor(params) => new EntityClass();

const $$EntityClass_fields_name = const DeclarationMirror(type: String);
const $$EntityClass_fields__setted = const DeclarationMirror(type: String);
const $$EntityClass_fields_otherName = const DeclarationMirror(
    type: bool, annotations: const [const SerializedName('renamed')]);
const $$EntityClass_fields_notVisible =
    const DeclarationMirror(type: String, annotations: const [ignore]);
const $$EntityClass_fields_children =
    const DeclarationMirror(type: const [List, EntityClass]);
const $$EntityClass_fields_setted = const DeclarationMirror(type: String);

const EntityClassClassMirror =
    const ClassMirror(name: 'EntityClass', constructors: const {
  '': const FunctionMirror(
      parameters: const {}, call: _EntityClass__Constructor)
}, fields: const {
  'name': $$EntityClass_fields_name,
  '_setted': $$EntityClass_fields__setted,
  'otherName': $$EntityClass_fields_otherName,
  'notVisible': $$EntityClass_fields_notVisible,
  'children': $$EntityClass_fields_children,
  'setted': $$EntityClass_fields_setted
}, getters: const [
  'name',
  '_setted',
  'otherName',
  'notVisible',
  'children',
  'setted'
], setters: const [
  'name',
  '_setted',
  'otherName',
  'notVisible',
  'children',
  'setted'
]);
