library extend_generics;

import 'package:dson/dson.dart';

part 'extend_generics.g.dart';

abstract class IManager<T> {
  List<Employee<T>> subordinates;
}

@serializable
class Person<T> extends _$PersonSerializable<T> {
  int id;
  String firstName;
  T lastName;
  DateTime dateOfBirth;
}

@serializable
// ignore: mixin_inherits_from_not_object
class Employee<T> extends Person<T> with _$EmployeeSerializable<T> {
  double salary;
}

@serializable
// ignore: mixin_inherits_from_not_object
class Manager<T> extends Employee<T> with _$ManagerSerializable<T> implements IManager<T> {
  List<Employee<T>> subordinates;
}

main() {
  _initMirrors();

  var person = Person<String>()
    ..id = 1
    ..firstName = 'Jhon'
    ..lastName = 'Doe'
    ..dateOfBirth = DateTime.now();

  var personJson = toJson(person);

  print('personJson: $personJson');

  Person<String> person2 = fromJson(personJson, [() => Person<String>(), {'lastName': String}]);
  print('\nPerson From Json:');
  print('person2.firstName: ${person2.firstName}');
  print('person2.lastName: ${person2.lastName}\n');

  var employee = Employee<String>()
    ..id = 1
    ..firstName = 'Employee'
    ..lastName = 'Doe'
    ..dateOfBirth = DateTime.now()
    ..salary = 1000.0;
  print(employee.runtimeType);
  var employeeJson = toJson(employee);

  print('employeeJson: $employeeJson');

  Employee<String> employee2 = fromJson(employeeJson, [() => Employee<String>(), {'lastName': String}]);
  print('\nEmployee From Json:');
  print('employee2.firstName: ${employee2.firstName}');
  print('employee2.lastName: ${employee2.lastName}');
  print('employee2.salary: ${employee2.salary}\n');

  var manager = Manager<String>()
    ..id = 1
    ..firstName = 'Manager'
    ..lastName = 'Doe'
    ..dateOfBirth = DateTime.now()
    ..salary = 2000.0
    ..subordinates = [employee];

  var managerJson = toJson(manager);

  print('managerJson: $managerJson');

  Manager<String> manager2 = fromJson(managerJson, [() => Manager<String>(), {'lastName': String}]);
  print('\nManager From Json:');
  print('manager2.firstName: ${manager2.firstName}');
  print('manager2.lastName: ${manager2.lastName}');
  print('manager2.salary: ${manager2.salary}');
  print('manager2.subordinates: ${manager2.subordinates}');
}
