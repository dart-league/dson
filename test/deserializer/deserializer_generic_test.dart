import 'package:test/test.dart';
import 'package:dson/dson.dart';

@serializable
class SimpleClass {
  String name;

  String toString() => "SimpleClass: name: ${name}";
}

@serializable
class ListClass {
  @DsonType(SimpleClass)
  List<SimpleClass> list;
}

@serializable
class ListListClass {
  @DsonType(const [List, SimpleClass])
  List<List<SimpleClass>> list;
}

@serializable
class ListListListClass {
  @DsonType(const [List, List, SimpleClass])
  List<List<List<SimpleClass>>> list;
}

@serializable
class ListMapClass {
  @DsonType(const [Map, const {String: SimpleClass}])
  List<Map<String, SimpleClass>> list;
}

@serializable
class ListListMapClass {
  @DsonType(const [List, Map, const {String: SimpleClass}])
  List<List<Map<String, SimpleClass>>> list;
}

@serializable
class MapClass {
  @DsonType(const {String: SimpleClass})
  Map<String, SimpleClass> map;
}

main() {

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
    ListMapClass test = fromJson('{"list": [{"simpleClass1": {"name": "test1"}, "simpleClass2": {"name": "test2"}}]}', ListMapClass);

    expect(test.list[0]['simpleClass1'].name, 'test1');
    expect(test.list[0]['simpleClass2'].name, 'test2');
  });

  test('deserialize: generic List<List<Map<String, SimpleClass>>>', () {
    ListListMapClass test = fromJson('{"list": [[{"simpleClass1": {"name": "test1"}, "simpleClass2": {"name": "test2"}}]]}', ListListMapClass);

    expect(test.list[0][0]['simpleClass1'].name, 'test1');
    expect(test.list[0][0]['simpleClass2'].name, 'test2');
  });

  test('deserialize: generic map', () {
    MapClass test = fromJson('{"map": {"test": {"name": "test"}, "test2": {"name": "test2"}}}', MapClass);

    expect(test.map["test"].name, "test");
    expect(test.map["test2"].name, "test2");
  });

}