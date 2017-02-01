// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_enums_test;

// **************************************************************************
// Generator: InitClassMirrorsGenerator
// Target: library deserialiazer.deserialize_enums_test
// **************************************************************************

_initClassMirrors() => initClassMirrors(
    {Color: ColorClassMirror, ObjectWithEnum: ObjectWithEnumClassMirror});

// **************************************************************************
// Generator: ClassMirrorsGenerator
// Target: class Color
// **************************************************************************

const ColorClassMirror =
    const ClassMirror(name: 'Color', isEnum: true, values: Color.values);

// **************************************************************************
// Generator: DsonGenerator
// Target: class ObjectWithEnum
// **************************************************************************

abstract class _$ObjectWithEnumSerializable extends SerializableMap {
  get color;
  set color(v);

  operator [](String key) {
    switch (key) {
      case 'color':
        return color;
    }
    throwFieldNotFoundException(key, "ObjectWithEnum");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'color':
        color = value;
        return;
    }
    throwFieldNotFoundException(key, "ObjectWithEnum");
  }

  get keys => const ['color'];
}

_ObjectWithEnum__Constructor(params) => new ObjectWithEnum();

const $$ObjectWithEnum_fields_color = const DeclarationMirror(type: Color);

const ObjectWithEnumClassMirror =
    const ClassMirror(name: 'ObjectWithEnum', constructors: const {
  '': const FunctionMirror(
      parameters: const {}, call: _ObjectWithEnum__Constructor)
}, fields: const {
  'color': $$ObjectWithEnum_fields_color
}, getters: const [
  'color'
], setters: const [
  'color'
]);
