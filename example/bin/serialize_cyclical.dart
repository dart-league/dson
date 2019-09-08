library example.serialize_cyclical; // this line is needed for the generator

import 'package:dson/dson.dart';

part 'serialize_cyclical.g.dart';  // this line is needed for the generator

@serializable
@cyclical
class Employee extends _$EmployeeSerializable {
  @uId int key;
  String firstName;
  String lastName;

  Address address;

  Employee manager;
}

@serializable
@cyclical
class Address extends _$AddressSerializable {
  @uId int key;
  String street;
  String city;
  String country;
  String postalCode;

  Employee owner;
}


void main() {
  _initMirrors();

  var manager = Employee()
    ..key = 1
    ..firstName = 'Jhon'
    ..lastName = 'Doe';
  manager.address = Address()
    ..key = 1
    ..street = 'some street'
    ..city = 'Miami'
    ..country = 'USA'
    ..owner = manager;

  var employee = Employee()
    ..key = 2
    ..firstName = 'Luis'
    ..lastName = 'Vargas'
    ..manager = manager;
  employee.address = Address()
    ..key = 2
    ..street = 'some street'
    ..city = 'Miami'
    ..country = 'USA'
    ..owner = employee;

  print(toJson(employee)); //will print: '{"id":2,"firstName":"Luis","lastName":"Vargas","address":{"id":2},"manager":{"id":1}}'

  print(toJson(employee.address)); // will print: '{"id":2,"street":"some street","city":"Miami","country":"USA","owner":{"id":2}}'

  // depth is a optional parameter that could be a list that should contains strings or Maps<String, Map>
  print(toJson(employee, depth: ['address']));
  /* will print:
           '{"id":2,"firstName":"Luis","lastName":"Vargas",'
              '"address":{"id":2,"street":"some street","city":"Miami","country":"USA","owner":{"id":2}},'
              '"manager":{"id":1}}'
  */

  print(toJson(employee, depth: [{'manager': ['address']}, 'address']));
  /* will print:
         '{"id":2,"firstName":"Luis","lastName":"Vargas",'
            '"address":{"id":2,"street":"some street","city":"Miami","country":"USA",'
              '"owner":{"id":2}},'
            '"manager":{"id":1,"firstName":"Jhon","lastName":"Doe",'
              '"address":{"id":1,"street":"some street","city":"Miami","country":"USA","owner":{"id":1}}}}');
  */
}
