# DSON

![Build Status](https://travis-ci.org/drails-dart/dson.svg?branch=master)

DSON is a dart library which converts Dart Objects into their JSON representation.

This library was initially a fork from [Dartson](https://github.com/eredo/dartson). Now it contains some differences:

 * Dartson uses custom transformers to convert objects to JSON. This produce faster and smaller code after dart2Js. Instead DSON uses [serializable]() and [built_mirrors]() libraries. This should produce code as fast and small as Dartson transformer.
 * DSON has the ability to serialize cyclical objects by mean of `depth` parameter, which allows users to specify how deep in the object graph they want to serialize.
 * DSON has the ability to exclude attributes for serialziation in two ways. 
    * Using `@ignore` over every attribute. This make excluding attributes too global and hardcoded, so users can only specify one exclusion schema.
    * Using `exclude` map as parameter for `toJson` method. This is more flexible, since it allows to have many exclusion schemas for serialization.
 * DSON uses the annotation `@serializable` instead `@entity` which is used by Dartson.

## Comparison with other libraries

https://github.com/drails-dart/dart-serialise

## Tutorials

[![DSON tutorials](http://img.youtube.com/vi/dZrCrCsw208/0.jpg)](https://www.youtube.com/watch?v=dZrCrCsw208&list=PLkMd51xTELZKV66oLUJLgnsFbOQy8irJ0 "01 Object to Json - DSON ")

## Configuration

1. Create a new dart project.

2. Add dependencies to `pubspec.yaml`

```yaml
...
dependencies:
  ...
  dson: any # replace for latest version
  ...
```

3. Create/edit `bin/main.dart` or `web/main.dart` and add the code shown in any of the samples below.

4. Run either `pub run build_runner build`, or `pub run build_runner watch`, or `pub run build_runner serve` in the console

## Convert objects to JSON strings

To convert objects to JSON strings you only need to use the `toJson` function, annotate the object with `@serializable` and pass the `object` to the `toJson` function as parameter:

```dart
library example.object_to_json; // this line is needed for the generator

import 'package:dson/dson.dart';

part 'object_to_json.g.dart'; // this line is needed for the generator

@serializable
class Person extends _$PersonSerializable {
  int id;
  String firstName;
  var lastName; //This is a dynamic attribute could be String, int, double, num, date or another type
  double height;
  DateTime dateOfBirth;

  @SerializedName("renamed")
  String otherName;

  @ignore
  String notVisible;

  // private members are never serialized
  String _private = "name";

  String get doGetter => _private;
}

void main() {
  _initMirrors();

  Person object = new Person()
    ..id = 1
    ..firstName = "Jhon"
    ..lastName = "Doe"
    ..height = 1.8
    ..dateOfBirth = new DateTime(1988, 4, 1, 6, 31)
    ..otherName = "Juan"
    ..notVisible = "hallo";

  String jsonString = toJson(object);
  print(jsonString);
  // will print: '{"id":1,"firstName":"Jhon","lastName":"Doe","height":1.8,"dateOfBirth":"1988-04-01T06:31:00.000","renamed":"Juan","doGetter":"name"}'
}
```

## Converting objects to Maps

To convert objects to Maps you only need to use the `toMap` function, annotate the object with `@serializable` and pass the `object` to `toMap` function as parameter:

```dart
library example.object_to_map; // this line is needed for the generator

import 'package:dson/dson.dart';

part 'object_to_map.g.dart';  // this line is needed for the generator

@serializable
class Person extends _$PersonSerializable {
  int id;
  String firstName;
  var lastName; //This is a dynamic attribute could be String, int, duble, num, date or another type
  double height;
  DateTime dateOfBirth;

  @SerializedName("renamed")
  String otherName;

  @ignore
  String notVisible;

  // private members are never serialized
  String _private = "name";

  String get doGetter => _private;
}

void main() {
  _initMirrors();

  Person object = new Person()
    ..id = 1
    ..firstName = "Jhon"
    ..lastName = "Doe"
    ..height = 1.8
    ..dateOfBirth = new DateTime(1988, 4, 1, 6, 31)
    ..otherName = "Juan"
    ..notVisible = "hallo";

  Map map = toMap(object);
  print(map);
  // will print: '{id:1, firstName: Jhon, lastName: Doe, height: 1.8, dateOfBirth: 1988-04-01T06:31:00.000, renamed: Juan, doGetter: name}'
}
```

### Serializing Cyclical Objects

To serialize objects that contains Cyclical References it would be needed to use the annotation `@cyclical`. If this annotation is present and the `depth` variable is not set then the non-primitive objects are not going to be parsed and only the id (or hashmap if the object does not contains id) is going to be present. Let's see next example:

```dart
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

  var manager = new Employee()
    ..key = 1
    ..firstName = 'Jhon'
    ..lastName = 'Doe';
  manager.address = new Address()
    ..key = 1
    ..street = 'some street'
    ..city = 'Miami'
    ..country = 'USA'
    ..owner = manager;

  var employee = new Employee()
    ..key = 2
    ..firstName = 'Luis'
    ..lastName = 'Vargas'
    ..manager = manager;
  employee.address = new Address()
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
```

as you can see employee has an address, and the address has an owner of type Employee. If the property `id` is not present in the object then it is going to take the `hashcode` value from the object as reference. And finally, the `depth` parameter passed to serialize function tells serializer how deep you want to go throw the reference. This help us not only to avoid cyclical reference, but to determine what referenced objects should be serialized.

The same applies for lists:

```dart
library example.serialize_cyclical_list; // this line is needed for the generator

import 'package:dson/dson.dart';

part 'serialize_cyclical_list.g.dart'; // this line is needed for the generator

@serializable
@cyclical
class Student extends _$StudentSerializable {
  int id;
  String name;

  List<Course> courses;
}

@serializable
@cyclical
class Course extends _$CourseSerializable {
  int id;

  DateTime beginDate;

  List<Student> students;
}

void main() {
// by the moment is needed to initialize the mirrors manually
  _initMirrors();

  var student1 = new Student()
    ..id = 1
    ..name = 'student1',
      student2 = new Student()
        ..id = 2
        ..name = 'student2',
      student3 = new Student()
        ..id = 3
        ..name = 'student3',
      course1 = new Course()
        ..id = 1
        ..beginDate = new DateTime.utc(2015, 1, 1)
        ..students = [student1, student2],
      course2 = new Course()
        ..id = 2
        ..beginDate = new DateTime.utc(2015, 1, 2)
        ..students = [student2, student3],
      course3 = new Course()
        ..id = 3
        ..beginDate = new DateTime.utc(2015, 1, 3)
        ..students = [student1, student3];

  student1.courses = [course1, course3];
  student2.courses = [course1, course2];
  student3.courses = [course2, course3];

  var students = [student1, student2, student3];
  print(toJson(students));

  print(toJson(student1)); // will print: '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]}'

  print(toJson(student1, depth: ['courses']));
/* will print:
      '{'
        '"id":1,'
        '"name":"student1",'
        '"courses":['
          '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
          '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
        ']'
      '}');
   */

  print(toJson(student1.courses));
/* will print:
      '['
        '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
        '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
      ']');
  */

  print(toJson(student2.courses, depth: ['students']));
/* will print:
      '['
        '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":['
          '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]},'
          '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]}'
        ']},'
        '{"id":2,"beginDate":"2015-01-02T00:00:00.000Z","students":['
          '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]},'
          '{"id":3,"name":"student3","courses":[{"id":2},{"id":3}]}'
        ']}'
      ']'
   */
}
```
    
Without the annotation `@cyclical` the program is going to throw a stack overflow error caused by the serializing of cyclical objects.

### Excluding attributes from being serialized

To exclude parameter from being serialized we have two options the first option is using `@ignore` over the attribute to ignore. However this approach is too global. What I want to say with this is that the attribute is going to be ignored always.

Another way to exclude attributes is adding the parameter `exclude` to `serialize` function. In this way we only exclude those attributes during that serialization.

```dart
library example.exclude_attributes; // this line is needed for the generator

import 'package:dson/dson.dart';

// replace `main` for the name of your file
part 'exclude_attributes.g.dart';  // this line is needed for the generator

@serializable
@cyclical
class Student extends _$StudentSerializable {
  int id;
  String name;

  List<Course> courses;
}

@serializable
@cyclical
class Course extends _$CourseSerializable {
  int id;

  DateTime beginDate;

  List<Student> students;
}

void main() {
  _initMirrors();

  var student1 = new Student()
    ..id = 1
    ..name = 'student1',
      student2 = new Student()
        ..id = 2
        ..name = 'student2',
      student3 = new Student()
        ..id = 3
        ..name = 'student3',
      course1 = new Course()
        ..id = 1
        ..beginDate = new DateTime.utc(2015, 1, 1)
        ..students = [student1, student2],
      course2 = new Course()
        ..id = 2
        ..beginDate = new DateTime.utc(2015, 1, 2)
        ..students = [student2, student3],
      course3 = new Course()
        ..id = 3
        ..beginDate = new DateTime.utc(2015, 1, 3)
        ..students = [student1, student3];

  student1.courses = [course1, course3];
  student2.courses = [course1, course2];
  student3.courses = [course2, course3];

  var students = [student1, student2, student3];

  print(toJson(students));
  /*
   will print:
    '['
      '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]},'
      '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]},'
      '{"id":3,"name":"student3","courses":[{"id":2},{"id":3}]}'
    ']'
  */
  print(toJson(student1)); // will print: '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]}'

  print(toJson(student1, depth: 'courses', exclude: 'name'));
  /* will print:
      '{'
        '"id":1,'
        '"courses":['
          '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
          '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
        ']'
      '}');
   */

  print(toJson(student1.courses, exclude: 'beginDate'));
  /* will print:
      '['
        '{"id":1,"students":[{"id":1},{"id":2}]},'
        '{"id":3,"students":[{"id":1},{"id":3}]}'
      ']');
  */

  print(toJson(student2.courses, depth: 'students', exclude: {'students': 'name'}));
  /* will print:
      '['
        '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":['
          '{"id":1,"courses":[{"id":1},{"id":3}]},'
          '{"id":2,"courses":[{"id":1},{"id":2}]}'
        ']},'
        '{"id":2,"beginDate":"2015-01-02T00:00:00.000Z","students":['
          '{"id":2,"courses":[{"id":1},{"id":2}]},'
          '{"id":3,"courses":[{"id":2},{"id":3}]}'
        ']}'
      ']'
   */

  print(toJson(student2.courses, depth: 'students', exclude: ['beginDate', {'students': 'name'}]));
  /* will print:
      '['
        '{"id":1,"students":['
          '{"id":1,"courses":[{"id":1},{"id":3}]},'
          '{"id":2,"courses":[{"id":1},{"id":2}]}'
        ']},'
        '{"id":2,"students":['
          '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]},'
          '{"id":3,"name":"student3","courses":[{"id":2},{"id":3}]}'
        ']}'
      ']'
   */
}
```

## Convert JSON strings to objects

To convert JSON strings to objects you only need to use the `fromJson` and `fromJsonList` functions and pass the `json` string to deserialize and the `Type` of the object as parameters:

```dart
// replace `example` for the name you want to give to your library
library example.json_to_object; // this line is needed for the generator

import 'package:dson/dson.dart';

// replace `main` for the name of your file
part 'json_to_object.g.dart';  // this line is needed for the generator

@serializable
class EntityClass extends _$EntityClassSerializable {
  String name;
  String _setted;

  @SerializedName("renamed")
  bool otherName;

  @ignore
  String notVisible;

  List<EntityClass> children;

  set setted(String s) => _setted = s;
  String get setted => _setted;
}

void main() {
  // by the moment is needed to initialize the mirrors manually
  _initMirrors();

  EntityClass object = fromJson('{"name":"test","renamed":true,"notVisible":"it is", "setted": "awesome"}', EntityClass);

  print(object.name); // > test
  print(object.otherName); // > blub
  print(object.notVisible); // > it is
  print(object.setted); // > awesome

  // to deserialize a list of items use [fromJsonList]
  List<EntityClass> list = fromJson('[{"name":"test", "children": [{"name":"child1"},{"name":"child2"}]},{"name":"test2"}]', [List, EntityClass]);
  print(list.length); // > 2
  print(list[0].name); // > test
  print(list[0].children[0].name); // > child1
}
```

### Converting `Maps` and `Lists<Map>` to dart objects

Frameworks like Angular.dart come with several HTTP services which already transform the HTTP response to a map using `JSON.encode`. To use those encoded Maps or Lists use `fromMap` function.

```dart
library example.map_to_object; // this line is needed for the generator

import 'package:dson/dson.dart';

// replace `main` for the name of your file
part 'map_to_object.g.dart'; // this line is needed for the generator

@serializable
class EntityClass extends _$EntityClassSerializable {
  String name;
  String _setted;

  @SerializedName("renamed")
  bool otherName;

  @ignore
  String notVisible;

  List<EntityClass> children;

  set setted(String s) => _setted = s;

  String get setted => _setted;
}

void main() {
  _initMirrors();

  EntityClass object = fromMap({
    "name": "test",
    "renamed": true,
    "notVisible": "it is",
    "setted": "awesome"
  }, EntityClass);
  print(object.name); // > test
  print(object.otherName); // > blub
  print(object.notVisible); // > it is
  print(object.setted); // > awesome

// to deserialize a list of items use [fromJsonList]
  List<EntityClass> list = fromMap([
    {"name": "test",
      "children": [
        {"name": "child1"},
        {"name": "child2"}
      ]
    },
    {"name": "test2"}
  ], [List, EntityClass]);
  print(list.length); // > 2
  print(list[0].name); // > test
  print(list[0].children[0].name); // > child1
}

```

## Extend serializable Objects

To extends objects that are going to be serializable you will need to add the comment:

```dart
// ignore: mixin_inherits_from_not_object
```

This is to advice the analyzer to ignore the error caused by inheriting from an object that is not a mixin. For example:

```dart
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

```

## Serialize/Deserialize immutable objects

To make an immutable class to be able to serialize/deserialize you only need to declare it with a constructor which only contains final parameters. For example:

```dart
library example.serialize_final_objects;

import 'package:dson/dson.dart';

part 'immutable_objects.g.dart';

@serializable
class Person extends _$PersonSerializable {
  final int id;
  final String name;

  Person({this.id, this.name});
}

main() {
  _initMirrors();

  var p1 = new Person(id: 1, name: 'Jhon Doe');

  var p1Json = toJson(p1);

  print('p1Json: $p1Json');

  var p1FromJson = fromJson(p1Json, Person);

  print('p1FromJson: (id: ${p1FromJson.id}, name: ${p1FromJson.name})');
}
```