// GENERATED CODE - DO NOT MODIFY BY HAND

part of extend_generics;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$PersonSerializable<T> extends SerializableMap {
  int get id;
  String get firstName;
  T get lastName;
  DateTime get dateOfBirth;
  set id(int v);
  set firstName(String v);
  set lastName(T v);
  set dateOfBirth(DateTime v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'dateOfBirth':
        return dateOfBirth;
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
      case 'dateOfBirth':
        dateOfBirth = fromSerializedDateTime(__value);
        return;
    }
    throwFieldNotFoundException(__key, 'Person');
  }

  Iterable<String> get keys => PersonClassMirror.fields.keys;
}

abstract class _$EmployeeSerializable<T> extends SerializableMap {
  double get salary;
  int get id;
  String get firstName;
  T get lastName;
  DateTime get dateOfBirth;
  set salary(double v);
  set id(int v);
  set firstName(String v);
  set lastName(T v);
  set dateOfBirth(DateTime v);

  operator [](Object __key) {
    switch (__key) {
      case 'salary':
        return salary;
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'dateOfBirth':
        return dateOfBirth;
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
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'dateOfBirth':
        dateOfBirth = fromSerializedDateTime(__value);
        return;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  Iterable<String> get keys => EmployeeClassMirror.fields.keys;
}

abstract class _$ManagerSerializable<T> extends SerializableMap {
  List<Employee<T>> get subordinates;
  double get salary;
  int get id;
  String get firstName;
  T get lastName;
  DateTime get dateOfBirth;
  set subordinates(List<Employee<T>> v);
  set salary(double v);
  set id(int v);
  set firstName(String v);
  set lastName(T v);
  set dateOfBirth(DateTime v);

  operator [](Object __key) {
    switch (__key) {
      case 'subordinates':
        return subordinates;
      case 'salary':
        return salary;
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'dateOfBirth':
        return dateOfBirth;
    }
    throwFieldNotFoundException(__key, 'Manager');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'subordinates':
        subordinates = fromSerialized(
            __value, [() => new List<Employee<T>>(), () => new Employee<T>()]);
        return;
      case 'salary':
        salary = __value;
        return;
      case 'id':
        id = __value;
        return;
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'dateOfBirth':
        dateOfBirth = fromSerializedDateTime(__value);
        return;
    }
    throwFieldNotFoundException(__key, 'Manager');
  }

  Iterable<String> get keys => ManagerClassMirror.fields.keys;
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
const $$Person_fields_dateOfBirth =
    const DeclarationMirror(name: 'dateOfBirth', type: DateTime);

const PersonClassMirror =
    const ClassMirror(name: 'Person', constructors: const {
  '': const FunctionMirror(name: '', $call: _Person__Constructor)
}, fields: const {
  'id': $$Person_fields_id,
  'firstName': $$Person_fields_firstName,
  'lastName': $$Person_fields_lastName,
  'dateOfBirth': $$Person_fields_dateOfBirth
}, getters: const [
  'id',
  'firstName',
  'lastName',
  'dateOfBirth'
], setters: const [
  'id',
  'firstName',
  'lastName',
  'dateOfBirth'
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
      'firstName': $$Person_fields_firstName,
      'lastName': $$Person_fields_lastName,
      'dateOfBirth': $$Person_fields_dateOfBirth
    },
    getters: const ['salary', 'id', 'firstName', 'lastName', 'dateOfBirth'],
    setters: const ['salary', 'id', 'firstName', 'lastName', 'dateOfBirth'],
    superclass: Person);

_Manager__Constructor([positionalParams, namedParams]) => new Manager();

const $$Manager_fields_subordinates =
    const DeclarationMirror(name: 'subordinates', type: const [
  List,
  const [Employee, dynamic]
]);

const ManagerClassMirror = const ClassMirror(
    name: 'Manager',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _Manager__Constructor)
    },
    fields: const {
      'subordinates': $$Manager_fields_subordinates,
      'salary': $$Employee_fields_salary,
      'id': $$Person_fields_id,
      'firstName': $$Person_fields_firstName,
      'lastName': $$Person_fields_lastName,
      'dateOfBirth': $$Person_fields_dateOfBirth
    },
    getters: const [
      'subordinates',
      'salary',
      'id',
      'firstName',
      'lastName',
      'dateOfBirth'
    ],
    setters: const [
      'subordinates',
      'salary',
      'id',
      'firstName',
      'lastName',
      'dateOfBirth'
    ],
    superclass: Employee,
    superinterfaces: const [IManager]);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    Person: PersonClassMirror,
    Employee: EmployeeClassMirror,
    Manager: ManagerClassMirror
  });

  getClassMirrorFromGenericInstance = (instance) => instance is Manager
      ? ManagerClassMirror
      : instance is Employee
          ? EmployeeClassMirror
          : instance is Person ? PersonClassMirror : null;
}
