// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializar.serialize_enums_test;

// **************************************************************************
// SerializableGenerator
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
        color = fromSerializedEnum(__value, Color, () => Color.values);
        return;
    }
    throwFieldNotFoundException(__key, 'ObjectWithEnum');
  }

  Iterable<String> get keys => ObjectWithEnumClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

const ColorClassMirror =
    ClassMirror(name: 'Color', isEnum: true, values: Color.values);

_ObjectWithEnum__Constructor([positionalParams, namedParams]) =>
    ObjectWithEnum();

const $$ObjectWithEnum_fields_color =
    DeclarationMirror(name: 'color', type: Color);

const ObjectWithEnumClassMirror = ClassMirror(
    name: 'ObjectWithEnum',
    constructors: {
      '': FunctionMirror(name: '', $call: _ObjectWithEnum__Constructor)
    },
    fields: {
      'color': $$ObjectWithEnum_fields_color
    },
    getters: [
      'color'
    ],
    setters: [
      'color'
    ]);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors(
      {Color: ColorClassMirror, ObjectWithEnum: ObjectWithEnumClassMirror});
}
