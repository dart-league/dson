library deserializer_test;

import 'package:dson/dson.dart';
import 'package:test/test.dart';

part 'deserializer_test.g.dart';

@serializable
class SimpleDateContainer extends _$SimpleDateContainerSerializable {
  DateTime testDate;
}

@serializable
class TestClass1 extends _$TestClass1Serializable {
  String name;
  bool matter;
  num number;
  List list;
  Map myMap;
  TestClass1 child;
  int intNumber;
  int intNumber2;
  double doubleNumber;
  double doubleNumber2;

  @ignore
  bool ignored;

  @SerializedName("the_renamed")
  String renamed;

  TestClass1();
}

@serializable
class JustObject extends _$JustObjectSerializable {
  Object object;
}

@serializable
class SetClass extends _$SetClassSerializable {
  Set<String> names;

  SetClass();
}

@serializable
class TestGetter extends _$TestGetterSerializable {
  String _name;

  TestGetter([this._name]);

  String get name => _name;
}

@serializable
class TestSetter extends _$TestSetterSerializable {
  String _name;

  String get name => _name;

  set name(String n) => _name = n;
}

@serializable
class NestedClass extends _$NestedClassSerializable {
  String name;
  List list;
  TestGetter getter;

  NestedClass(this.name, this.list, this.getter);
}

@serializable
class SimpleClass extends _$SimpleClassSerializable {
  String name;

  String toString() => "SimpleClass: name: ${name}";
}

@serializable
class SimpleList extends _$SimpleListSerializable {
  List list;
}

@serializable
class SimpleMap extends _$SimpleMapSerializable {
  Map myMap;
}

@serializable
class SimpleMapString extends _$SimpleMapStringSerializable {
  Map<String, num> myMap;
}

@serializable
class SimpleVarContainer extends _$SimpleVarContainerSerializable {
  var someVar;
}

main() {
  _initMirrors();

  test('deserialize: simple.', () {
    TestClass1 test = fromJson(
        '{"name":"test","matter":true,"intNumber":2, "intNumber2":2, "doubleNumber": 2.0, "doubleNumber2": 2.0,'
        ' "number":5,"list":[1,2,3],"myMap":{"k":"o"},"the_renamed":"test"}',
        TestClass1);
    expect(test.name, 'test');
    expect(test.matter, true);
    expect(test.intNumber, 2);
    expect(test.intNumber2, 2);
    expect(test.doubleNumber, 2.0);
    expect(test.doubleNumber2, 2.0);
    expect(test.number, 5);
    expect(test.list.length, 3);
    expect(test.list[1], 2);
    expect(test.myMap["k"], "o");
    expect(test.renamed, "test");
  });

  test('deserialize: no constructor found.', () {
    NestedClass test = fromJson('{"name":"failure"}', NestedClass);
    expect(test.name, equals("failure"));
  });

  test('deserialize: nested parsing', () {
    TestClass1 test = fromJson('{"name":"parent","child":{"name":"child"}}', TestClass1);
    expect(test.child.name, "child");
  });

  test('deserialize: using setter', () {
    TestSetter test = fromJson('{"name":"test"}', TestSetter);
    expect(test.name, 'test');
  });

  test('deserialize: simple list', () {
    SimpleList list = fromJson('{"list":[1,2,3]}', SimpleList);
    expect(list.list[0], 1);
  });

  test('deserialize: simple map', () {
    SimpleMap test = fromJson('{"myMap": {"test": "test", "test2": "test2"}}', SimpleMap);

    expect(test.myMap["test"], "test");
    expect(test.myMap["test2"], "test2");
  });

  test('deserialize: simple map with type declaration', () {
    SimpleMapString test = fromJson('{"myMap": {"test": 1, "test2": 2}}', SimpleMapString);

    expect(test.myMap["test"], 1);
    expect(test.myMap["test2"], 2);
  });

  test('deserialize: list of simple class', () {
    List<SimpleClass> test = fromJson('[{"name":"test"},{"name":"test2"}]', [() => List<SimpleClass>(), SimpleClass]);
    expect(test[0].name, "test");
    expect(test[1].name, "test2");
  });

  test('deserialize: generic set', () {
    SetClass test = fromJson('{"names":["test"]}', SetClass);
    expect(test.names.contains("test"), true);
  });

  test('deserialize: map of simple class', () {
    Map<String, SimpleClass> test = fromJson('{"key1":{"name":"test"},"key2":{"name":"test2"}}', [
      () => Map<String, SimpleClass>(),
      const [String, SimpleClass]
    ]);
    expect(test["key1"].name, "test");
    expect(test["key2"].name, "test2");
  });

  test('deserialize: just object', () {
    JustObject obj = fromJson('{"object":"test"}', JustObject);
    expect(obj.object, 'test');
  });

  test('mapToObject: SimpleMapString', () {
    SimpleMapString test = fromMap({
      "myMap": {"test": 1, "test2": 2}
    }, SimpleMapString);

    expect(test.myMap["test"], 1);
    expect(test.myMap["test2"], 2);
  });

  test('mapListToObjectList: List of SimplemapString', () {
    List<SimpleMapString> test = fromMap([
      {
        "myMap": {"test": 1, "test2": 2}
      },
      {
        "myMap": {"test": 3, "test2": 4}
      }
    ], [
      () => List<SimpleMapString>(),
      SimpleMapString
    ]);
    expect(test[0].myMap["test"], 1);
    expect(test[0].myMap["test2"], 2);
    expect(test[1].myMap["test"], 3);
    expect(test[1].myMap["test2"], 4);
  });

  test('deserialize: DateTime', () {
    var date = DateTime.now();
    var ctg = fromJson('{"testDate":"${date.toString()}"}', SimpleDateContainer);
    expect(ctg.testDate is DateTime, true);
    expect(ctg.testDate == date, true);
  });

  test('deserialize: SimpleVarContainer', () {
    SimpleVarContainer simpleVarContainer = fromJson('{"someVar": "hello"}', SimpleVarContainer);
    expect(simpleVarContainer.someVar, 'hello');
  });
}
