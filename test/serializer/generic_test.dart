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
class Person extends _$PersonSerializable {
  int id;

  String name;
}

main() {
  _initMirrors();

  test('serialize generic', () {
    var p = new Person()
      ..id = 1
      ..name = 'person 1';

    var page = new Page<Person>()
      ..size = 1
      ..number = 1
      ..total = 100
      ..items = [p];

    expect(toJson(page), '{"size":1,"total":100,"number":1,"items":[{"id":1,"name":"person 1"}]}');
  });
}