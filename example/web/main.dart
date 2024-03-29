library dson_example_web;

import 'package:dson/dson.dart';
import 'dart:html';

part 'main.g.dart';

@serializable
class Person extends SerializableMap with _$PersonSerializable {
  int? id;
  String? firstName;
  String? lastName;
  DateTime? dateOfBirth;
}

@serializable
// ignore: mixin_inherits_from_not_object
class Employee extends Person with _$EmployeeSerializable {
  double? salary;
}

@serializable
class Manager extends Employee with _$ManagerSerializable {
  List<Employee>? subordinates;
}

main() {
  _initMirrors();

  var person = Person()
    ..id = 1
    ..firstName = 'Jhon'
    ..lastName = 'Doe'
    ..dateOfBirth = DateTime.now();

  var personJson = toJson(person);

  printToScreen('personJson: $personJson');

  var employee = Employee()
    ..id = 1
    ..firstName = 'Jhon'
    ..lastName = 'Doe'
    ..dateOfBirth = DateTime.now()
    ..salary = 1000.0;

  var employeeJson = toJson(employee);

  printToScreen('employeeJson: $employeeJson');

  var manager = Manager()
    ..id = 1
    ..firstName = 'Jhon'
    ..lastName = 'Doe'
    ..dateOfBirth = DateTime.now()
    ..salary = 1000.0
    ..subordinates = [employee];

  var managerJson = toJson(manager);

  printToScreen('employeeJson: $managerJson');
}

printToScreen(String value) {
  document.body?.append(PreElement()..appendText(value));
}


