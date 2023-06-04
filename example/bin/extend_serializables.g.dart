// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extend_serializables.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$PersonSerializable on SerializableMap {
  int? get id;
  String? get firstName;
  String? get lastName;
  DateTime? get dateOfBirth;
  set id(int? v);
  set firstName(String? v);
  set lastName(String? v);
  set dateOfBirth(DateTime? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
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

  Iterable<String> get keys => PersonClassMirror.fields?.keys ?? [];
}

mixin _$EmployeeSerializable on SerializableMap {
  double? get salary;
  int? get id;
  String? get firstName;
  String? get lastName;
  DateTime? get dateOfBirth;
  set salary(double? v);
  set id(int? v);
  set firstName(String? v);
  set lastName(String? v);
  set dateOfBirth(DateTime? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
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

  Iterable<String> get keys => EmployeeClassMirror.fields?.keys ?? [];
}

mixin _$ManagerSerializable on SerializableMap {
  List<Employee>? get subordinates;
  double? get salary;
  int? get id;
  String? get firstName;
  String? get lastName;
  DateTime? get dateOfBirth;
  set subordinates(List<Employee>? v);
  set salary(double? v);
  set id(int? v);
  set firstName(String? v);
  set lastName(String? v);
  set dateOfBirth(DateTime? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'subordinates':
        subordinates = fromSerialized(__value,
            [() => List<Employee>.empty(growable: true), () => Employee()]);
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

  Iterable<String> get keys => ManagerClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Person__Constructor([positionalParams, namedParams]) => Person();

const $$Person_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Person_fields_firstName =
    DeclarationMirror(name: 'firstName', type: String);
const $$Person_fields_lastName =
    DeclarationMirror(name: 'lastName', type: String);
const $$Person_fields_dateOfBirth =
    DeclarationMirror(name: 'dateOfBirth', type: DateTime);

const PersonClassMirror = ClassMirror(
    name: 'Person',
    constructors: {'': FunctionMirror(name: '', $call: _Person__Constructor)},
    fields: {
      'id': $$Person_fields_id,
      'firstName': $$Person_fields_firstName,
      'lastName': $$Person_fields_lastName,
      'dateOfBirth': $$Person_fields_dateOfBirth
    },
    getters: ['id', 'firstName', 'lastName', 'dateOfBirth'],
    setters: ['id', 'firstName', 'lastName', 'dateOfBirth'],
    superclass: SerializableMap);

_Employee__Constructor([positionalParams, namedParams]) => Employee();

const $$Employee_fields_salary =
    DeclarationMirror(name: 'salary', type: double);

const EmployeeClassMirror = ClassMirror(
    name: 'Employee',
    constructors: {'': FunctionMirror(name: '', $call: _Employee__Constructor)},
    fields: {
      'salary': $$Employee_fields_salary,
      'id': $$Person_fields_id,
      'firstName': $$Person_fields_firstName,
      'lastName': $$Person_fields_lastName,
      'dateOfBirth': $$Person_fields_dateOfBirth
    },
    getters: ['salary', 'id', 'firstName', 'lastName', 'dateOfBirth'],
    setters: ['salary', 'id', 'firstName', 'lastName', 'dateOfBirth'],
    superclass: Person);

_Manager__Constructor([positionalParams, namedParams]) => Manager();

const $$Manager_fields_subordinates =
    DeclarationMirror(name: 'subordinates', type: [List, Employee]);

const ManagerClassMirror = ClassMirror(
    name: 'Manager',
    constructors: {'': FunctionMirror(name: '', $call: _Manager__Constructor)},
    fields: {
      'subordinates': $$Manager_fields_subordinates,
      'salary': $$Employee_fields_salary,
      'id': $$Person_fields_id,
      'firstName': $$Person_fields_firstName,
      'lastName': $$Person_fields_lastName,
      'dateOfBirth': $$Person_fields_dateOfBirth
    },
    getters: [
      'subordinates',
      'salary',
      'id',
      'firstName',
      'lastName',
      'dateOfBirth'
    ],
    setters: [
      'subordinates',
      'salary',
      'id',
      'firstName',
      'lastName',
      'dateOfBirth'
    ],
    superclass: Employee);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    Person: PersonClassMirror,
    Employee: EmployeeClassMirror,
    Manager: ManagerClassMirror
  });
}
