// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.object_to_json;

// **************************************************************************
// SerializableGenerator
// **************************************************************************

abstract class _$PersonSerializable extends SerializableMap {
  String get doGetter;
  int get id;
  String get firstName;
  dynamic get lastName;
  double get height;
  DateTime get dateOfBirth;
  String get otherName;
  String get notVisible;
  String get _private;
  set id(int v);
  set firstName(String v);
  set lastName(dynamic v);
  set height(double v);
  set dateOfBirth(DateTime v);
  set otherName(String v);
  set notVisible(String v);
  set _private(String v);

  operator [](Object __key) {
    switch (__key) {
      case 'doGetter':
        return doGetter;
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

_Person__Constructor([positionalParams, namedParams]) => Person();

const $$Person_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Person_fields_firstName =
    DeclarationMirror(name: 'firstName', type: String);
const $$Person_fields_lastName =
    DeclarationMirror(name: 'lastName', type: dynamic);
const $$Person_fields_height = DeclarationMirror(name: 'height', type: double);
const $$Person_fields_dateOfBirth =
    DeclarationMirror(name: 'dateOfBirth', type: DateTime);
const $$Person_fields_otherName = DeclarationMirror(
  name: 'renamed',
  type: String,
);
const $$Person_fields_notVisible =
    DeclarationMirror(name: 'notVisible', type: String, annotations: [ignore]);
const $$Person_fields__private =
    DeclarationMirror(name: '_private', type: String);
const $$Person_fields_doGetter =
    DeclarationMirror(name: 'doGetter', type: String, isFinal: true);

const PersonClassMirror = ClassMirror(name: 'Person', constructors: {
  '': FunctionMirror(name: '', $call: _Person__Constructor)
}, fields: {
  'id': $$Person_fields_id,
  'firstName': $$Person_fields_firstName,
  'lastName': $$Person_fields_lastName,
  'height': $$Person_fields_height,
  'dateOfBirth': $$Person_fields_dateOfBirth,
  'renamed': $$Person_fields_otherName,
  'notVisible': $$Person_fields_notVisible,
  '_private': $$Person_fields__private,
  'doGetter': $$Person_fields_doGetter
}, getters: [
  'doGetter',
  'id',
  'firstName',
  'lastName',
  'height',
  'dateOfBirth',
  'renamed',
  'notVisible',
  '_private'
], setters: [
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
