// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserializer.deserialize_default_constructor_with_args;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$ClassWithConstructorWithArgumentsSerializable
    extends SerializableMap {
  int get id;
  String get name;
  void set id(int v);
  void set name(String v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'ClassWithConstructorWithArguments');
  }

  operator []=(Object __key, __value) {
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
      ClassWithConstructorWithArgumentsClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_ClassWithConstructorWithArguments__Constructor(
        [positionalParams, namedParams]) =>
    new ClassWithConstructorWithArguments(id: namedParams['id']);

const $$ClassWithConstructorWithArguments_fields_id =
    const DeclarationMirror(name: 'id', type: int);
const $$ClassWithConstructorWithArguments_fields_name =
    const DeclarationMirror(name: 'name', type: String);

const ClassWithConstructorWithArgumentsClassMirror = const ClassMirror(
    name: 'ClassWithConstructorWithArguments',
    constructors: const {
      '': const FunctionMirror(
          name: '',
          namedParameters: const {
            'id': const DeclarationMirror(name: 'id', type: int, isNamed: true)
          },
          $call: _ClassWithConstructorWithArguments__Constructor)
    },
    fields: const {
      'id': $$ClassWithConstructorWithArguments_fields_id,
      'name': $$ClassWithConstructorWithArguments_fields_name
    },
    getters: const [
      'id',
      'name'
    ],
    setters: const [
      'id',
      'name'
    ]);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    ClassWithConstructorWithArguments:
        ClassWithConstructorWithArgumentsClassMirror
  });
}
