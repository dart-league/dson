// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generics.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$PageSerializable<T> on SerializableMap {
  int? get size;
  int? get total;
  int? get number;
  List<T>? get items;
  set size(int? v);
  set total(int? v);
  set number(int? v);
  set items(List<T>? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'size':
        return size;
      case 'total':
        return total;
      case 'number':
        return number;
      case 'items':
        return items;
    }
    throwFieldNotFoundException(__key, 'Page');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'size':
        size = __value;
        return;
      case 'total':
        total = __value;
        return;
      case 'number':
        number = __value;
        return;
      case 'items':
        items = fromSerialized(__value, () => List<T>.empty(growable: true));
        return;
    }
    throwFieldNotFoundException(__key, 'Page');
  }

  Iterable<String> get keys => PageClassMirror.fields?.keys ?? [];
}

mixin _$PersonSerializable on SerializableMap {
  int? get id;
  String? get name;
  set id(int? v);
  set name(String? v);

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

  Iterable<String> get keys => PersonClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Page__Constructor([positionalParams, namedParams]) => Page();

const $$Page_fields_size = DeclarationMirror(name: 'size', type: int);
const $$Page_fields_total = DeclarationMirror(name: 'total', type: int);
const $$Page_fields_number = DeclarationMirror(name: 'number', type: int);
const $$Page_fields_items =
    DeclarationMirror(name: 'items', type: [List, dynamic]);

const PageClassMirror = ClassMirror(
    name: 'Page',
    constructors: {'': FunctionMirror(name: '', $call: _Page__Constructor)},
    fields: {
      'size': $$Page_fields_size,
      'total': $$Page_fields_total,
      'number': $$Page_fields_number,
      'items': $$Page_fields_items
    },
    getters: ['size', 'total', 'number', 'items'],
    setters: ['size', 'total', 'number', 'items'],
    superclass: SerializableMap);

_Person__Constructor([positionalParams, namedParams]) => Person();

const $$Person_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Person_fields_name = DeclarationMirror(name: 'name', type: String);

const PersonClassMirror = ClassMirror(
    name: 'Person',
    constructors: {'': FunctionMirror(name: '', $call: _Person__Constructor)},
    fields: {'id': $$Person_fields_id, 'name': $$Person_fields_name},
    getters: ['id', 'name'],
    setters: ['id', 'name'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Page: PageClassMirror, Person: PersonClassMirror});

  getClassMirrorFromGenericInstance =
      (instance) => instance is Page ? PageClassMirror : null;
}
