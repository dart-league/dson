library serializer.generic;

import 'package:dson/dson.dart';
import 'package:test/test.dart';

part 'generic_test.g.dart';

@serializable
class Page<T> extends _$PageSerializable<T> {
  int size;

  int total;

  int number;

  List<T> items;
}

@serializable
// ignore: mixin_inherits_from_not_object
class Resource<T, ID> extends Page<T> with _$ResourceSerializable<T, ID> {
  ID id;
}

@serializable
class Person extends _$PersonSerializable {
  int id;

  String name;
}

@serializable
// ignore: mixin_inherits_from_not_object
class Employee extends Person with _$EmployeeSerializable {
  double salary;
}

main() {
  _initMirrors();

  test('serialize generic', () {
    var p = Person()
      ..id = 1
      ..name = 'person 1';

    var page = Page<Person>()
      ..size = 1
      ..number = 1
      ..total = 100
      ..items = [p];

    expect(toJson(page), '{"size":1,"total":100,"number":1,"items":[{"id":1,"name":"person 1"}]}');
  });

  test('serialize extended generic with two types', () {
    var p = Person()
      ..id = 1
      ..name = 'person 1';

    var resource = Resource<Person, int>()
      ..id = 1
      ..size = 1
      ..number = 1
      ..total = 100
      ..items = [p];

    expect(toJson(resource), '{"id":1,"size":1,"total":100,"number":1,"items":[{"id":1,"name":"person 1"}]}');
  });

  test('serialize extended generic with two types one extended', () {
    var p = Employee()
      ..id = 1
      ..name = 'person 1'
      ..salary = 2000;

    var resource = Resource<Person, int>()
      ..id = 1
      ..size = 1
      ..number = 1
      ..total = 100
      ..items = [p];

    expect(toJson(resource), '{"id":1,"size":1,"total":100,"number":1,"items":[{"salary":2000.0,"id":1,"name":"person 1"}]}');
  });
}
