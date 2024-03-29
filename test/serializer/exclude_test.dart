library serializer.exclude_test;

import 'package:dson/dson.dart';
import 'package:test/test.dart';

part 'exclude_test.g.dart';

@cyclical
@serializable
class Employee extends SerializableMap with _$EmployeeSerializable {
  int? id;
  String? firstName;
  String? lastName;

  Address? address;

  Employee? manager;
}

@cyclical
@serializable
class Address extends SerializableMap with _$AddressSerializable {
  int? id;
  String? street;
  String? city;
  String? country;
  String? postalCode;

  Employee? owner;
}

@cyclical
@serializable
class Employee2 extends SerializableMap with _$Employee2Serializable {
  String? firstName;
  String? lastName;

  Address2? address;

  Employee2? manager;
}

@cyclical
@serializable
class Address2 extends SerializableMap with _$Address2Serializable {
  String? street;
  String? city;
  String? country;
  String? postalCode;

  Employee2? owner;
}

@cyclical
@serializable
class Student extends SerializableMap with _$StudentSerializable {
  int? id;
  String? name;

  List<Course>? courses;
}

@cyclical
@serializable
class Course extends SerializableMap with _$CourseSerializable {
  int? id;

  DateTime? beginDate;

  List<Student>? students;
}

main() {
  _initMirrors();

  group('exclude', () {
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
    test('firstName.', () {
      expect(toJson(manager, exclude: 'firstName'), '{"id":1,"lastName":"Doe","address":{"id":1}}');
    });
    
    test('firstName and lastName', () {
      expect(toJson(manager, exclude: ['firstName', 'lastName']), '{"id":1,"address":{"id":1}}');
    });
//
    test('address.street without depth', () {
      expect(toJson(manager, exclude: {'address': 'street'}), '{"id":1,"firstName":"Jhon","lastName":"Doe","address":{"id":1}}');
    });

    test('address.street with depth', () {
      expect(toJson(manager, exclude: {'address': 'street'}, expand: 'address'), '{"id":1,"firstName":"Jhon","lastName":"Doe","address":{"id":1,"city":"Miami","country":"USA","owner":{"id":1}}}');
    });

    test('address.street and address.city with depth', () {
      expect(toJson(manager, exclude: {'address': ['street', 'city']}, expand: 'address'), '{"id":1,"firstName":"Jhon","lastName":"Doe","address":{"id":1,"country":"USA","owner":{"id":1}}}');
    });
  });

  group('exclude from list >', () {
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

    var students = [student1, student2, student3];

    test('students name', () {
      expect(toJson(students, exclude: 'name'), '[{"id":1,"courses":[{"id":1},{"id":3}]},{"id":2,"courses":[{"id":1},{"id":2}]},{"id":3,"courses":[{"id":2},{"id":3}]}]');
    });

    test('student.courses*.beginDate', () {
      expect(toJson(students, expand: 'courses', exclude: {'courses': 'beginDate'}), '[{"id":1,"name":"student1","courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":3,"students":[{"id":1},{"id":3}]}]},{"id":2,"name":"student2","courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":2,"students":[{"id":2},{"id":3}]}]},{"id":3,"name":"student3","courses":[{"id":2,"students":[{"id":2},{"id":3}]},{"id":3,"students":[{"id":1},{"id":3}]}]}]');
    });

    test('students*.name and students*.courses*.beginDate', () {
      expect(toJson(students, expand: 'courses', exclude: ['name', {'courses': 'beginDate'}]), '[{"id":1,"courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":3,"students":[{"id":1},{"id":3}]}]},{"id":2,"courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":2,"students":[{"id":2},{"id":3}]}]},{"id":3,"courses":[{"id":2,"students":[{"id":2},{"id":3}]},{"id":3,"students":[{"id":1},{"id":3}]}]}]');
    });
  });

  group('exclude from map >', () {
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

    var students = {"s1":student1, "s2":student2, "s3":student3};

    test('students name', () {
      expect('{"s1":{"id":1,"courses":[{"id":1},{"id":3}]},"s2":{"id":2,"courses":[{"id":1},{"id":2}]},"s3":{"id":3,"courses":[{"id":2},{"id":3}]}}',
          toJson(students, exclude: 'name'));
    });

    test('student.courses*.beginDate', () {
      expect('{"s1":{"id":1,"name":"student1","courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":3,"students":[{"id":1},{"id":3}]}]},"s2":{"id":2,"name":"student2","courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":2,"students":[{"id":2},{"id":3}]}]},"s3":{"id":3,"name":"student3","courses":[{"id":2,"students":[{"id":2},{"id":3}]},{"id":3,"students":[{"id":1},{"id":3}]}]}}',
          toJson(students, expand: 'courses', exclude: {'courses': 'beginDate'}));
    });

    test('students*.name and students*.courses*.beginDate', () {
      expect('{"s1":{"id":1,"courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":3,"students":[{"id":1},{"id":3}]}]},"s2":{"id":2,"courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":2,"students":[{"id":2},{"id":3}]}]},"s3":{"id":3,"courses":[{"id":2,"students":[{"id":2},{"id":3}]},{"id":3,"students":[{"id":1},{"id":3}]}]}}',
          toJson(students, expand: 'courses', exclude: ['name', {'courses': 'beginDate'}]));
    });
  });
}
