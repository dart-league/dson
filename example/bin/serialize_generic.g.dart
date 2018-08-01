// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.serialize_ciclical;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$SomeObjectSerializable<T> extends SerializableMap {
  int get id;
  List<T> get genericList;
  void set id(int v);
  void set genericList(List<T> v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'genericList':
        return genericList;
    }
    throwFieldNotFoundException(__key, 'SomeObject');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'genericList':
        genericList = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SomeObject');
  }

  Iterable<String> get keys => SomeObjectClassMirror.fields.keys;
}

abstract class _$PersonSerializable extends SerializableMap {
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
    throwFieldNotFoundException(__key, 'Person');
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
    throwFieldNotFoundException(__key, 'Person');
  }

  Iterable<String> get keys => PersonClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_SomeObject__Constructor([positionalParams, namedParams]) => new SomeObject();

const $$SomeObject_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$SomeObject_fields_genericList =
    const DeclarationMirror(name: 'genericList', type: const [List, dynamic]);

const SomeObjectClassMirror = const ClassMirror(
    name: 'SomeObject',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _SomeObject__Constructor)
    },
    fields: const {
      'id': $$SomeObject_fields_id,
      'genericList': $$SomeObject_fields_genericList
    },
    getters: const [
      'id',
      'genericList'
    ],
    setters: const [
      'id',
      'genericList'
    ]);

_Person__Constructor([positionalParams, namedParams]) => new Person();

const $$Person_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Person_fields_name =
    const DeclarationMirror(name: 'name', type: String);

const PersonClassMirror = const ClassMirror(
    name: 'Person',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _Person__Constructor)
    },
    fields: const {
      'id': $$Person_fields_id,
      'name': $$Person_fields_name
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
  initClassMirrors(
      {SomeObject: SomeObjectClassMirror, Person: PersonClassMirror});

  getClassMirrorFromGenericInstance =
      (instance) => instance is SomeObject ? SomeObjectClassMirror : null;
}
