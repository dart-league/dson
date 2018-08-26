// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.object_to_json;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$PersonSerializable extends SerializableMap {
  int get id;
  String get firstName;
  dynamic get lastName;
  double get height;
  DateTime get dateOfBirth;
  String get otherName;
  String get notVisible;
  String get _private;
  String get doGetter;
  void set id(int v);
  void set firstName(String v);
  void set lastName(dynamic v);
  void set height(double v);
  void set dateOfBirth(DateTime v);
  void set otherName(String v);
  void set notVisible(String v);
  void set _private(String v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'height':
        return height;
      case 'dateOfBirth':
        return dateOfBirth;
      case 'renamed':
        return otherName;
      case 'notVisible':
        return notVisible;
      case '_private':
        return _private;
      case 'doGetter':
        return doGetter;
    }
    throwFieldNotFoundException(__key, 'Person');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'height':
        height = __value;
        return;
      case 'dateOfBirth':
        dateOfBirth = fromSerializedDateTime(__value);
        return;
      case 'renamed':
        otherName = __value;
        return;
      case 'notVisible':
        notVisible = __value;
        return;
      case '_private':
        _private = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Person');
  }

  Iterable<String> get keys => PersonClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Person__Constructor([positionalParams, namedParams]) => new Person();

const $$Person_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Person_fields_firstName =
    const DeclarationMirror(name: 'firstName', type: String);
const $$Person_fields_lastName =
    const DeclarationMirror(name: 'lastName', type: dynamic);
const $$Person_fields_height =
    const DeclarationMirror(name: 'height', type: double);
const $$Person_fields_dateOfBirth =
    const DeclarationMirror(name: 'dateOfBirth', type: DateTime);
const $$Person_fields_otherName = const DeclarationMirror(
  name: 'renamed',
  type: String,
);
const $$Person_fields_notVisible = const DeclarationMirror(
    name: 'notVisible', type: String, annotations: const [ignore]);
const $$Person_fields__private =
    const DeclarationMirror(name: '_private', type: String);
const $$Person_fields_doGetter =
    const DeclarationMirror(name: 'doGetter', type: String, isFinal: true);

const PersonClassMirror =
    const ClassMirror(name: 'Person', constructors: const {
  '': const FunctionMirror(name: '', $call: _Person__Constructor)
}, fields: const {
  'id': $$Person_fields_id,
  'firstName': $$Person_fields_firstName,
  'lastName': $$Person_fields_lastName,
  'height': $$Person_fields_height,
  'dateOfBirth': $$Person_fields_dateOfBirth,
  'renamed': $$Person_fields_otherName,
  'notVisible': $$Person_fields_notVisible,
  '_private': $$Person_fields__private,
  'doGetter': $$Person_fields_doGetter
}, getters: const [
  'id',
  'firstName',
  'lastName',
  'height',
  'dateOfBirth',
  'renamed',
  'notVisible',
  '_private',
  'doGetter'
], setters: const [
  'id',
  'firstName',
  'lastName',
  'height',
  'dateOfBirth',
  'renamed',
  'notVisible',
  '_private'
]);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Person: PersonClassMirror});
}
