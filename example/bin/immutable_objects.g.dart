// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immutable_objects.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$PersonSerializable on SerializableMap {
  int get id;
  String? get name;

  operator [](Object? __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'Person');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {}
    throwFieldNotFoundException(__key, 'Person');
  }

  Iterable<String> get keys => PersonClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Person__Constructor([positionalParams, namedParams]) =>
    Person(id: namedParams['id'] ?? 0, name: namedParams['name']);

const $$Person_fields_id =
    DeclarationMirror(name: 'id', type: int, isFinal: true);
const $$Person_fields_name =
    DeclarationMirror(name: 'name', type: String, isFinal: true);

const PersonClassMirror = ClassMirror(
    name: 'Person',
    constructors: {
      '': FunctionMirror(
          name: '',
          namedParameters: {
            'id': DeclarationMirror(name: 'id', type: int, isNamed: true),
            'name': DeclarationMirror(name: 'name', type: String, isNamed: true)
          },
          $call: _Person__Constructor)
    },
    fields: {'id': $$Person_fields_id, 'name': $$Person_fields_name},
    getters: ['id', 'name'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Person: PersonClassMirror});
}
