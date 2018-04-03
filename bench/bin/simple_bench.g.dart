// GENERATED CODE - DO NOT MODIFY BY HAND

part of simple_bench;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$SimpleSerializable extends SerializableMap {
  String get id;
  double get value;
  bool get flag;
  void set id(String v);
  void set value(double v);
  void set flag(bool v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'value':
        return value;
      case 'flag':
        return flag;
    }
    throwFieldNotFoundException(__key, 'Simple');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'value':
        value = __value;
        return;
      case 'flag':
        flag = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Simple');
  }

  Iterable<String> get keys => SimpleClassMirror.fields.keys;
}

abstract class _$ComplexSerializable extends SerializableMap {
  Simple get simple;
  List<Simple> get list;
  void set simple(Simple v);
  void set list(List<Simple> v);

  operator [](Object __key) {
    switch (__key) {
      case 'simple':
        return simple;
      case 'list':
        return list;
    }
    throwFieldNotFoundException(__key, 'Complex');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'simple':
        simple = __value;
        return;
      case 'list':
        list = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Complex');
  }

  Iterable<String> get keys => ComplexClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_Simple__Constructor([positionalParams, namedParams]) => new Simple();

const $$Simple_fields_id = const DeclarationMirror(name: 'id', type: String);
const $$Simple_fields_value =
    const DeclarationMirror(name: 'value', type: double);
const $$Simple_fields_flag = const DeclarationMirror(name: 'flag', type: bool);

const SimpleClassMirror =
    const ClassMirror(name: 'Simple', constructors: const {
  '': const FunctionMirror(name: '', $call: _Simple__Constructor)
}, fields: const {
  'id': $$Simple_fields_id,
  'value': $$Simple_fields_value,
  'flag': $$Simple_fields_flag
}, getters: const [
  'id',
  'value',
  'flag'
], setters: const [
  'id',
  'value',
  'flag'
]);
_Complex__Constructor([positionalParams, namedParams]) => new Complex();

const $$Complex_fields_simple =
    const DeclarationMirror(name: 'simple', type: Simple);
const $$Complex_fields_list =
    const DeclarationMirror(name: 'list', type: const [List, Simple]);

const ComplexClassMirror = const ClassMirror(
    name: 'Complex',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _Complex__Constructor)
    },
    fields: const {
      'simple': $$Complex_fields_simple,
      'list': $$Complex_fields_list
    },
    getters: const [
      'simple',
      'list'
    ],
    setters: const [
      'simple',
      'list'
    ]);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Simple: SimpleClassMirror, Complex: ComplexClassMirror});
}
