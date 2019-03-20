library deserialiazer.deserialize_generic_test;

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
class ListTClass<T> extends _$ListTClassSerializable<T> {
  List<T> listT;
}

@serializable
class GenericTClass<T> extends _$GenericTClassSerializable<T> {
  T t;
}

@serializable
class GenericT1T2Class<T1, T2> extends _$GenericT1T2ClassSerializable<T1, T2> {
  T1 t1;

  T2 t2;
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
  Map<String, SimpleClass> myMap;
}

main() {
  _initMirrors();

  test('deserialize: generic List<SimpleClass>', () {
    ListClass test = fromJson('{"list": [{"name": "test1"}, {"name": "test2"}]}', ListClass);

    expect(test.list[0].name, 'test1');
    expect(test.list[1].name, 'test2');
  });

  test('deserialize: generic List<T>', () {
    ListTClass<SimpleClass> test = fromJson('{"listT": [{"name": "test1"}, {"name": "test2"}]}',
            [() => ListTClass<SimpleClass>(), {'listT': [() => List<SimpleClass>(), SimpleClass]}]);

    expect(test.listT[0].name, 'test1');
    expect(test.listT[1].name, 'test2');
  });

  test('deserialize: GenericTClass', () {
    GenericTClass<SimpleClass> test = fromJson('{"t": {"name": "test"}}', [() => GenericTClass<SimpleClass>(), {'t': SimpleClass}]);
    
    expect(test.t.name, 'test');
  });

  test('deserialize: GenericT1T2Class', () {
    GenericT1T2Class<SimpleClass, List<SimpleClass>> test = fromJson('{"t1": {"name": "test"}, "t2": [{"name": "test"}]}',
        [() => GenericT1T2Class<SimpleClass, List<SimpleClass>>(), {'t1': SimpleClass, 't2': [() => List<SimpleClass>(), SimpleClass]}]);

    expect(test.t1.name, 'test');
    expect(test.t2[0].name, 'test');
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
    MapClass test = fromJson('{"myMap": {"test": {"name": "test"}, "test2": {"name": "test2"}}}', MapClass);

    expect(test.myMap["test"].name, "test");
    expect(test.myMap["test2"].name, "test2");
  });
}
