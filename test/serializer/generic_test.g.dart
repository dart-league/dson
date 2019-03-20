// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.generic;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$PageSerializable<T> extends SerializableMap {
  int get size;
  int get total;
  int get number;
  List<T> get items;
  void set size(int v);
  void set total(int v);
  void set number(int v);
  void set items(List<T> v);

  operator [](Object __key) {
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

  operator []=(Object __key, __value) {
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
        items = fromSerialized(__value, () => new List<T>());
        return;
    }
    throwFieldNotFoundException(__key, 'Page');
  }

  Iterable<String> get keys => PageClassMirror.fields.keys;
}

abstract class _$ResourceSerializable<T, ID> extends SerializableMap {
  ID get id;
  int get size;
  int get total;
  int get number;
  List<T> get items;
  void set id(ID v);
  void set size(int v);
  void set total(int v);
  void set number(int v);
  void set items(List<T> v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'size':
        return size;
      case 'total':
        return total;
      case 'number':
        return number;
      case 'items':
        return items;
    }
    throwFieldNotFoundException(__key, 'Resource');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
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
        items = fromSerialized(__value, () => new List<T>());
        return;
    }
    throwFieldNotFoundException(__key, 'Resource');
  }

  Iterable<String> get keys => ResourceClassMirror.fields.keys;
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

abstract class _$EmployeeSerializable extends SerializableMap {
  double get salary;
  int get id;
  String get name;
  void set salary(double v);
  void set id(int v);
  void set name(String v);

  operator [](Object __key) {
    switch (__key) {
      case 'salary':
        return salary;
      case 'id':
        return id;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'salary':
        salary = __value;
        return;
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  Iterable<String> get keys => EmployeeClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Page__Constructor([positionalParams, namedParams]) => new Page();

const $$Page_fields_size = const DeclarationMirror(name: 'size', type: int);
const $$Page_fields_total = const DeclarationMirror(name: 'total', type: int);
const $$Page_fields_number = const DeclarationMirror(name: 'number', type: int);
const $$Page_fields_items =
    const DeclarationMirror(name: 'items', type: const [List, dynamic]);

const PageClassMirror = const ClassMirror(name: 'Page', constructors: const {
  '': const FunctionMirror(name: '', $call: _Page__Constructor)
}, fields: const {
  'size': $$Page_fields_size,
  'total': $$Page_fields_total,
  'number': $$Page_fields_number,
  'items': $$Page_fields_items
}, getters: const [
  'size',
  'total',
  'number',
  'items'
], setters: const [
  'size',
  'total',
  'number',
  'items'
]);

_Resource__Constructor([positionalParams, namedParams]) => new Resource();

const $$Resource_fields_id = const DeclarationMirror(name: 'id', type: dynamic);

const ResourceClassMirror = const ClassMirror(
    name: 'Resource',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _Resource__Constructor)
    },
    fields: const {
      'id': $$Resource_fields_id,
      'size': $$Page_fields_size,
      'total': $$Page_fields_total,
      'number': $$Page_fields_number,
      'items': $$Page_fields_items
    },
    getters: const ['id', 'size', 'total', 'number', 'items'],
    setters: const ['id', 'size', 'total', 'number', 'items'],
    superclass: Page);

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

_Employee__Constructor([positionalParams, namedParams]) => new Employee();

const $$Employee_fields_salary =
    const DeclarationMirror(name: 'salary', type: double);

const EmployeeClassMirror = const ClassMirror(
    name: 'Employee',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _Employee__Constructor)
    },
    fields: const {
      'salary': $$Employee_fields_salary,
      'id': $$Person_fields_id,
      'name': $$Person_fields_name
    },
    getters: const ['salary', 'id', 'name'],
    setters: const ['salary', 'id', 'name'],
    superclass: Person);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    Page: PageClassMirror,
    Resource: ResourceClassMirror,
    Person: PersonClassMirror,
    Employee: EmployeeClassMirror
  });

  getClassMirrorFromGenericInstance = (instance) => instance is Resource
      ? ResourceClassMirror
      : instance is Page ? PageClassMirror : null;
}
