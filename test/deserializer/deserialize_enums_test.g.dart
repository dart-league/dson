// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_enums_test;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$ObjectWithEnumSerializable extends SerializableMap {
  Color get color;
  set color(Color v);

  operator [](Object __key) {
    switch (__key) {
      case 'color':
        return color;
    }
    throwFieldNotFoundException(__key, 'ObjectWithEnum');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'color':
        color = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'ObjectWithEnum');
  }

  Iterable<String> get keys => ObjectWithEnumClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

const ColorClassMirror =
    const ClassMirror(name: 'Color', isEnum: true, values: Color.values);
_ObjectWithEnum__Constructor([positionalParams, namedParams]) =>
    new ObjectWithEnum();

const $$ObjectWithEnum_fields_color = const DeclarationMirror(type: Color);

const ObjectWithEnumClassMirror = const ClassMirror(
    name: 'ObjectWithEnum',
    constructors: const {
      '': const FunctionMirror($call: _ObjectWithEnum__Constructor)
    },
    fields: const {
      'color': $$ObjectWithEnum_fields_color
    },
    getters: const [
      'color'
    ],
    setters: const [
      'color'
    ]);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors(
      {Color: ColorClassMirror, ObjectWithEnum: ObjectWithEnumClassMirror});
  initFunctionMirrors({});
}
