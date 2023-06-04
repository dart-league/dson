// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deserialize_default_constructor_with_args_test.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$ClassWithConstructorWithArgumentsSerializable on SerializableMap {
  int get id;
  String? get name;
  set id(int v);
  set name(String? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'ClassWithConstructorWithArguments');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'ClassWithConstructorWithArguments');
  }

  Iterable<String> get keys =>
      ClassWithConstructorWithArgumentsClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_ClassWithConstructorWithArguments__Constructor(
        [positionalParams, namedParams]) =>
    ClassWithConstructorWithArguments(id: namedParams['id'] ?? 0);

const $$ClassWithConstructorWithArguments_fields_id =
    DeclarationMirror(name: 'id', type: int);
const $$ClassWithConstructorWithArguments_fields_name =
    DeclarationMirror(name: 'name', type: String);

const ClassWithConstructorWithArgumentsClassMirror = ClassMirror(
    name: 'ClassWithConstructorWithArguments',
    constructors: {
      '': FunctionMirror(
          name: '',
          namedParameters: {
            'id': DeclarationMirror(name: 'id', type: int, isNamed: true)
          },
          $call: _ClassWithConstructorWithArguments__Constructor)
    },
    fields: {
      'id': $$ClassWithConstructorWithArguments_fields_id,
      'name': $$ClassWithConstructorWithArguments_fields_name
    },
    getters: ['id', 'name'],
    setters: ['id', 'name'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    ClassWithConstructorWithArguments:
        ClassWithConstructorWithArgumentsClassMirror
  });
}
