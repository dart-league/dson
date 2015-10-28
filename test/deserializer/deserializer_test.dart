library deserializer_test;


import 'package:dson/dson.dart';
import 'package:test/test.dart';

@serializable
class SimpleDateContainer {
  DateTime testDate;
}

@serializable
class TestClass1 {
  String name;
  bool matter;
  num number;
  List list;
  Map map;
  TestClass1 child;
  int intNumber;

  @ignore
  bool ignored;

  @SerializedName("the_renamed")
  String renamed;

  TestClass1();
}

@serializable
class JustObject {
  Object object;
}

@serializable
class TestGetter {
  String _name;

  TestGetter([this._name]);

  String get name => _name;
}

@serializable
class TestSetter {
  String _name;

  String get name => _name;
  set name(String n) => _name = n;
}

@serializable
class NestedClass {
  String name;
  List list;
  TestGetter getter;

  NestedClass(this.name, this.list, this.getter);
}

@serializable
class SimpleClass {
  String name;

  String toString() => "SimpleClass: name: ${name}";
}

@serializable
class ListClass {
  List<SimpleClass> list;
}

@serializable
class MapClass {
  Map<String, SimpleClass> map;
}

@serializable
class SimpleList {
  List list;
}

@serializable
class SimpleMap {
  Map map;
}

@serializable
class SimpleMapString {
  Map<String,num> map;
}

main() {

  test('deserialize: simple', () {
    TestClass1 test = fromJson('{"name":"test","matter":true,"intNumber":2,"number":5,"list":[1,2,3],"map":{"k":"o"},"the_renamed":"test"}', TestClass1);
    expect(test.name, 'test');
    expect(test.matter, true);
    expect(test.intNumber, 2);
    expect(test.number, 5);
    expect(test.list.length, 3);
    expect(test.list[1], 2);
    expect(test.map["k"], "o");
    expect(test.renamed, "test");
  });

  test('deserialize: no constructor found', () {
    NoConstructorError err;
    try {
      NestedClass test = fromJson('{"name":"failure"}', NestedClass);
      expect(test.name, equals("failure"));
    } catch(ex) {
      err = ex;
    }

    expect(err != null, true);
    expect(err is NoConstructorError, true);
  });

  test('deserialize: nested parsing', () {
    TestClass1 test = fromJson('{"name":"parent","child":{"name":"child"}}', TestClass1);
    expect(test.child.name, "child");
  });

  test('deserialize: using setter', () {
    TestSetter test = fromJson('{"name":"test"}', TestSetter);
    expect(test.name, 'test');
  });

  test('deserialize: generics list', () {
    ListClass test = fromJson('{"list": [{"name": "test1"}, {"name": "test2"}]}', ListClass);

    expect(test.list[0].name, 'test1');
    expect(test.list[1].name, 'test2');
  });

  test('deserialize: simple list', () {
    SimpleList list = fromJson('{"list":[1,2,3]}', SimpleList);
    expect(list.list[0], 1);
  });

  test('deserialize: generic map', () {
    MapClass test = fromJson('{"map": {"test": {"name": "test"}, "test2": {"name": "test2"}}}', MapClass);

    expect(test.map["test"].name, "test");
    expect(test.map["test2"].name, "test2");
  });

  test('deserialize: simple map', () {
    SimpleMap test = fromJson('{"map": {"test": "test", "test2": "test2"}}', SimpleMap);

    expect(test.map["test"], "test");
    expect(test.map["test2"], "test2");
  });

  test('deserialize: simple map with type declaration', () {
    SimpleMapString test = fromJson('{"map": {"test": 1, "test2": 2}}', SimpleMapString);

    expect(test.map["test"], 1);
    expect(test.map["test2"], 2);
  });

  test('deserialize: list of simple class', () {
    List<SimpleClass> test = fromJsonList('[{"name":"test"},{"name":"test2"}]', SimpleClass);
    expect(test[0].name, "test");
    expect(test[1].name, "test2");
  });

  test('deserialize: map of simple class', () {
    Map<String, SimpleClass> test = fromJsonMap('{"key1":{"name":"test"},"key2":{"name":"test2"}}', SimpleClass);
    expect(test["key1"].name, "test");
    expect(test["key2"].name, "test2");
  });

  test('deserialize: just object', () {
    JustObject obj = fromJson('{"object":"test"}', JustObject);
    expect(obj.object, 'test');
  });

  test('mapToObject: SimpleMapString', () {
    SimpleMapString test = fromMap({
      "map": {"test": 1, "test2": 2}
    }, SimpleMapString);

    expect(test.map["test"], 1);
    expect(test.map["test2"], 2);
  });

  test('mapListToObjectList: List of SimplemapString', () {
    List<SimpleMapString> test = fromMapList([{"map": {"test": 1, "test2": 2}}, {"map": {"test": 3, "test2": 4}}], SimpleMapString);
    expect(test[0].map["test"], 1);
    expect(test[0].map["test2"], 2);
    expect(test[1].map["test"], 3);
    expect(test[1].map["test2"], 4);
  });

  test('deserialize: DateTime', () {
    var date = new DateTime.now();
    var ctg = fromJson('{"testDate":"${date.toString()}"}', SimpleDateContainer);
    expect(ctg.testDate is DateTime, true);
    expect(ctg.testDate == date, true);
  });
}