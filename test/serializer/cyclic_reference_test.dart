library serializer.cyclic_reference_serialize;

import 'package:dson/dson.dart';
import 'package:test/test.dart';

part 'cyclic_reference_test.g.dart';

main() {
  _initMirrors();

  group('ciclical test with id >', () {

    var manager = Employee()
      ..id = 1
      ..firstName = 'Jhon'
      ..lastName = 'Doe';
    manager.address = Address()
        ..id = 1
        ..street = 'some street'
        ..city = 'Miami'
        ..country = 'USA'
        ..owner = manager;
  
    var employee = Employee()
      ..id = 2
      ..firstName = 'Luis'
      ..lastName = 'Vargas'
      ..manager = manager;
    employee.address = Address()
        ..id = 2
        ..street = 'some street'
        ..city = 'Miami'
        ..country = 'USA'
        ..owner = employee;
       
    test('serialize Employee without address and manager', () {
      expect(toJson(employee), '{"id":2,"firstName":"Luis","lastName":"Vargas","address":{"id":2},"manager":{"id":1}}');
    });
    test('serialize employee.address without owner', () {
      expect(toJson(employee.address), '{"id":2,"street":"some street","city":"Miami","country":"USA","owner":{"id":2}}');
    });

    test('serialize employee with address and no manager', () {
      expect(toJson(employee, depth: 'address'),
             '{"id":2,"firstName":"Luis","lastName":"Vargas",'
                '"address":{"id":2,"street":"some street","city":"Miami","country":"USA","owner":{"id":2}},'
                '"manager":{"id":1}}');
    });

    test('serialize employee with address, manager and manager address', () {
      expect(toJson(employee, depth: [{'manager': 'address'}, 'address']),
             '{"id":2,"firstName":"Luis","lastName":"Vargas",'
                '"address":{"id":2,"street":"some street","city":"Miami","country":"USA",'
                  '"owner":{"id":2}},'
                '"manager":{"id":1,"firstName":"Jhon","lastName":"Doe",'
                  '"address":{"id":1,"street":"some street","city":"Miami","country":"USA","owner":{"id":1}}}}');
    });
  });

  group('Ciclical Test without id >', () {

    var manager = Employee2()
      ..firstName = 'Jhon'
      ..lastName = 'Doe';
    manager.address = Address2()
        ..street = 'some street'
        ..city = 'Miami'
        ..country = 'USA'
        ..owner = manager;

    var employee = Employee2()
      ..firstName = 'Luis'
      ..lastName = 'Vargas'
      ..manager = manager;
    employee.address = Address2()
        ..street = 'some street'
        ..city = 'Miami'
        ..country = 'USA'
        ..owner = employee;

    test('serialize Employee without address and manager', () {
      expect(toJson(employee), matches(
          r'\{'
              r'"firstName":"Luis",'
              r'"lastName":"Vargas",'
              r'"address":\{"hashcode":\d+\},'
              r'"manager":\{"hashcode":\d+\},'
              r'"hashcode":\d+'
          '\}'));
    });
    test('serialize employee.address without owner', () {
      expect(toJson(employee.address), matches(
          r'\{'
              r'"street":"some street",'
              r'"city":"Miami",'
              r'"country":"USA",'
              r'"owner":\{"hashcode":\d+\},'
              r'"hashcode":\d+'));
    });

    test('serialize employee with address and no manager', () {
      expect(toJson(employee, depth: ['address']),
             matches(
                 r'\{"firstName":"Luis","lastName":"Vargas",'
                    r'"address":\{"street":"some street","city":"Miami","country":"USA","owner":\{"hashcode":\d+\},"hashcode":\d+\},'
                    r'"manager":\{"hashcode":\d+\},'
                 r'"hashcode":\d+\}'));
    });

    test('serialize employee with address, manager and manager address', () {
      expect(toJson(employee, depth: [{'manager': ['address']}, 'address']),
             matches(
                 r'\{'
                    r'"firstName":"Luis",'
                    r'"lastName":"Vargas",'
                    r'"address":\{'
                        r'"street":"some street",'
                        r'"city":"Miami",'
                        r'"country":"USA",'
                        r'"owner":\{"hashcode":\d+\},'
                        r'"hashcode":\d+'
                    r'\},'
                    r'"manager":\{'
                        r'"firstName":"Jhon",'
                        r'"lastName":"Doe",'
                        r'"address":\{'
                            r'"street":"some street",'
                            r'"city":"Miami",'
                            r'"country":"USA",'
                            r'"owner":\{"hashcode":\d+\},'
                            r'"hashcode":\d+'
                        r'\},'
                        r'"hashcode":\d+'
                    r'\},'
                    r'"hashcode":\d+'
                r'\}'));
    });
  });

  group('ciclical list test with id >', () {


    var student1 = Student()
        ..id = 1
        ..name = 'student1',
      student2 = Student()
        ..id = 2
        ..name = 'student2',
      student3 = Student()
        ..id = 3
        ..name = 'student3',
      course1 = Course()
        ..id = 1
        ..beginDate = DateTime.utc(2015, 1, 1)
        ..students = [student1, student2],
      course2 = Course()
        ..id = 2
        ..beginDate = DateTime.utc(2015, 1, 2)
        ..students = [student2, student3],
      course3 = Course()
        ..id = 3
        ..beginDate = DateTime.utc(2015, 1, 3)
        ..students = [student1, student3];

    student1.courses = [course1, course3];
    student2.courses = [course1, course2];
    student3.courses = [course2, course3];

    test('serializing student1 without courses', () {
      expect(toJson(student1), '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]}');
    });

    test('serializing student1 with courses', () {
      expect(toJson(student1, depth: ['courses']),
          '{'
            '"id":1,'
            '"name":"student1",'
            '"courses":['
              '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
              '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
            ']'
          '}');
    });

    test('serializing student1.courses without students', () {
      expect(toJson(student1.courses),
          '['
            '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
            '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
          ']');
    });

    test('serializing student1.courses with students', () {
      expect(toJson(student2.courses, depth: ['students']),
          '['
            '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":['
              '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]},'
              '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]}'
            ']},'
            '{"id":2,"beginDate":"2015-01-02T00:00:00.000Z","students":['
              '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]},'
              '{"id":3,"name":"student3","courses":[{"id":2},{"id":3}]}'
            ']}'
          ']');
    });
  });
        
}

@cyclical
@serializable
class Employee extends _$EmployeeSerializable {
  int id;
  String firstName;
  String lastName;
  
  Address address;
  
  Employee manager;
}

@cyclical
@serializable
class Address extends _$AddressSerializable {
  int id;
  String street;
  String city;
  String country;
  String postalCode;
  
  Employee owner;
}

@cyclical
@serializable
class Employee2 extends _$Employee2Serializable {
  String firstName;
  String lastName;
  
  Address2 address;
  
  Employee2 manager;
}

@cyclical
@serializable
class Address2 extends _$Address2Serializable {
  String street;
  String city;
  String country;
  String postalCode;
  
  Employee2 owner;
}

@cyclical
@serializable
class Student extends _$StudentSerializable {
  int id;
  String name;
  
  List<Course> courses;
}

@cyclical
@serializable
class Course extends _$CourseSerializable {
  int id;
  
  DateTime beginDate;
  
  List<Student> students;
}
