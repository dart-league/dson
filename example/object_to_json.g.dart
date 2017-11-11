// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.object_to_json;

// **************************************************************************
// Generator: DsonGenerator
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
      case 'otherName':
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
        dateOfBirth = __value;
        return;
      case 'otherName':
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
// Generator: MirrorsGenerator
// **************************************************************************

_Person__Constructor([positionalParams, namedParams]) => new Person();

const $$Person_fields_id = const DeclarationMirror(type: int);
const $$Person_fields_firstName = const DeclarationMirror(type: String);
const $$Person_fields_lastName = const DeclarationMirror(type: dynamic);
const $$Person_fields_height = const DeclarationMirror(type: double);
const $$Person_fields_dateOfBirth = const DeclarationMirror(type: DateTime);
const $$Person_fields_otherName = const DeclarationMirror(
    type: String, annotations: const [const SerializedName(r'renamed')]);
const $$Person_fields_notVisible =
    const DeclarationMirror(type: String, annotations: const [ignore]);
const $$Person_fields__private = const DeclarationMirror(type: String);
const $$Person_fields_doGetter =
    const DeclarationMirror(type: String, isFinal: true);

const PersonClassMirror =
    const ClassMirror(name: 'Person', constructors: const {
  '': const FunctionMirror($call: _Person__Constructor)
}, fields: const {
  'id': $$Person_fields_id,
  'firstName': $$Person_fields_firstName,
  'lastName': $$Person_fields_lastName,
  'height': $$Person_fields_height,
  'dateOfBirth': $$Person_fields_dateOfBirth,
  'otherName': $$Person_fields_otherName,
  'notVisible': $$Person_fields_notVisible,
  '_private': $$Person_fields__private,
  'doGetter': $$Person_fields_doGetter
}, getters: const [
  'id',
  'firstName',
  'lastName',
  'height',
  'dateOfBirth',
  'otherName',
  'notVisible',
  '_private',
  'doGetter'
], setters: const [
  'id',
  'firstName',
  'lastName',
  'height',
  'dateOfBirth',
  'otherName',
  'notVisible',
  '_private'
]);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Person: PersonClassMirror});
  initFunctionMirrors({});
}
