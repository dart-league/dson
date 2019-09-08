// GENERATED CODE - DO NOT MODIFY BY HAND

part of simple_bench;

// **************************************************************************
// SerializableGenerator
// **************************************************************************

abstract class _$SimpleSerializable extends SerializableMap {
  String get id;
  double get value;
  bool get flag;
  set id(String v);
  set value(double v);
  set flag(bool v);

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
  set simple(Simple v);
  set list(List<Simple> v);

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
        simple = fromSerialized(__value, () => Simple());
        return;
      case 'list':
        list = fromSerialized(__value, [() => List<Simple>(), () => Simple()]);
        return;
    }
    throwFieldNotFoundException(__key, 'Complex');
  }

  Iterable<String> get keys => ComplexClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Simple__Constructor([positionalParams, namedParams]) => Simple();

const $$Simple_fields_id = DeclarationMirror(name: 'id', type: String);
const $$Simple_fields_value = DeclarationMirror(name: 'value', type: double);
const $$Simple_fields_flag = DeclarationMirror(name: 'flag', type: bool);

const SimpleClassMirror = ClassMirror(name: 'Simple', constructors: {
  '': FunctionMirror(name: '', $call: _Simple__Constructor)
}, fields: {
  'id': $$Simple_fields_id,
  'value': $$Simple_fields_value,
  'flag': $$Simple_fields_flag
}, getters: [
  'id',
  'value',
  'flag'
], setters: [
  'id',
  'value',
  'flag'
]);

_Complex__Constructor([positionalParams, namedParams]) => Complex();

const $$Complex_fields_simple = DeclarationMirror(name: 'simple', type: Simple);
const $$Complex_fields_list =
    DeclarationMirror(name: 'list', type: [List, Simple]);

const ComplexClassMirror = ClassMirror(
    name: 'Complex',
    constructors: {'': FunctionMirror(name: '', $call: _Complex__Constructor)},
    fields: {'simple': $$Complex_fields_simple, 'list': $$Complex_fields_list},
    getters: ['simple', 'list'],
    setters: ['simple', 'list']);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Simple: SimpleClassMirror, Complex: ComplexClassMirror});
}
