library extend_serializables;

import 'package:dson/dson.dart';

part 'extend_serializables.g.dart';

@serializable
class Person extends _$PersonSerializable {
  int id;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
}

@serializable
// ignore: mixin_inherits_from_not_object
class Employee extends Person with _$EmployeeSerializable {
  double salary;
}

@serializable
// ignore: mixin_inherits_from_not_object
class Manager extends Employee with _$ManagerSerializable {
  List<Employee> subordinates;
}

main() {
  _initMirrors();

  var person = new Person()
    ..id = 1
    ..firstName = 'Jhon'
    ..lastName = 'Doe'
    ..dateOfBirth = new DateTime.now();

  var personJson = toJson(person);

  print('personJson: $personJson');

  var employee = new Employee()
    ..id = 1
    ..firstName = 'Employee'
    ..lastName = 'Doe'
    ..dateOfBirth = new DateTime.now()
    ..salary = 1000.0;

  var employeeJson = toJson(employee);

  print('employeeJson: $employeeJson');

  var manager = new Manager()
    ..id = 1
    ..firstName = 'Manager'
    ..lastName = 'Doe'
    ..dateOfBirth = new DateTime.now()
    ..salary = 2000.0
    ..subordinates = [employee];

  var managerJson = toJson(manager);

  print('managerJson: $managerJson');
}
