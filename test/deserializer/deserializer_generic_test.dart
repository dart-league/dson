library deserialiazer.deserialize_generic_test;

import 'package:serializable/serializable.dart';
import 'package:test/test.dart';
import 'package:dson/dson.dart';

part 'deserializer_generic_test.g.dart';

@serializable
class SimpleClass extends _$SimpleClassSerializable {
  String name;

  String toString() => "SimpleClass: name: ${name}";
}

@serializable
class ListClass extends _$ListClassSerializable {
  List<SimpleClass> list;
}

@serializable
class ListListClass extends _$ListListClassSerializable {
  List<List<SimpleClass>> list;
}

@serializable
class ListListListClass extends _$ListListListClassSerializable {
  List<List<List<SimpleClass>>> list;
}

@serializable
class ListMapClass extends _$ListMapClassSerializable {
  List<Map<String, SimpleClass>> list;
}

@serializable
class ListListMapClass extends _$ListListMapClassSerializable {
  List<List<Map<String, SimpleClass>>> list;
}

@serializable
class MapClass extends _$MapClassSerializable {
  Map<String, SimpleClass> map;
}

main() {
  _initClassMirrors();

  test('deserialize: generic List<SimpleClass>', () {
    ListClass test = fromJson('{"list": [{"name": "test1"}, {"name": "test2"}]}', ListClass);

    expect(test.list[0].name, 'test1');
    expect(test.list[1].name, 'test2');
  });

  test('deserialize: generic List<List<SimpleClass>>', () {
    ListListClass test = fromJson('{"list": [[{"name": "test1"}, {"name": "test2"}]]}', ListListClass);

    expect(test.list[0][0].name, 'test1');
    expect(test.list[0][1].name, 'test2');
  });

  test('deserialize: generic List<List<List<SimpleClass>>>', () {
    ListListListClass test = fromJson('{"list": [[[{"name": "test1"}, {"name": "test2"}]]]}', ListListListClass);

    expect(test.list[0][0][0].name, 'test1');
    expect(test.list[0][0][1].name, 'test2');
  });

  test('deserialize: generic List<Map<String, SimpleClass>>', () {
    ListMapClass test = fromJson(
        '{"list": [{"simpleClass1": {"name": "test1"}, "simpleClass2": {"name": "test2"}}]}', ListMapClass);

    expect(test.list[0]['simpleClass1'].name, 'test1');
    expect(test.list[0]['simpleClass2'].name, 'test2');
  });

  test('deserialize: generic List<List<Map<String, SimpleClass>>>', () {
    ListListMapClass test = fromJson(
        '{"list": [[{"simpleClass1": {"name": "test1"}, "simpleClass2": {"name": "test2"}}]]}', ListListMapClass);

    expect(test.list[0][0]['simpleClass1'].name, 'test1');
    expect(test.list[0][0]['simpleClass2'].name, 'test2');
  });

  test('deserialize: generic map', () {
    MapClass test = fromJson('{"map": {"test": {"name": "test"}, "test2": {"name": "test2"}}}', MapClass);

    expect(test.map["test"].name, "test");
    expect(test.map["test2"].name, "test2");
  });
}