// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.smart;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$SmartClassSerializable extends SerializableMap {
  String get name;
  int get age;
  void set name(String v);
  void set age(int v);

  operator [](Object __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'age':
        return age;
    }
    throwFieldNotFoundException(__key, 'SmartClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'name':
        name = __value;
        return;
      case 'age':
        age = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SmartClass');
  }

  Iterable<String> get keys => SmartClassClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_SmartClass__Constructor([positionalParams, namedParams]) =>
    new SmartClass(positionalParams[0], positionalParams[1]);

const $$SmartClass_fields_name = const DeclarationMirror(type: String);
const $$SmartClass_fields_age = const DeclarationMirror(type: int);

const SmartClassClassMirror =
    const ClassMirror(name: 'SmartClass', constructors: const {
  '': const FunctionMirror(positionalParameters: const [
    const DeclarationMirror(name: 'name', type: String, isRequired: true),
    const DeclarationMirror(name: 'age', type: int, isRequired: true)
  ], $call: _SmartClass__Constructor)
}, fields: const {
  'name': $$SmartClass_fields_name,
  'age': $$SmartClass_fields_age
}, getters: const [
  'name',
  'age'
], setters: const [
  'name',
  'age'
]);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({SmartClass: SmartClassClassMirror});
  initFunctionMirrors({});
}
