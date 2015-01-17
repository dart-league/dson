library test_dson;

import 'package:dson/dson.dart';
import 'package:unittest/unittest.dart';

@MirrorsUsed(targets: const['test_dson'], override: '*')
import 'dart:mirrors';
import 'package:logging/logging.dart';

part 'serializer/cyclic_reference_test.dart';
part 'serializer/simple_test.dart';

void main() {
  Logger.root.level = Level.ALL;
//  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
  
  simple_serilize();

  cyclic_reference_serialize();

  test('deserialize: simple', () {
    TestClass1 test = deserialize('{"name":"test","matter":true,"intNumber":2,"number":5,"list":[1,2,3],"map":{"k":"o"},"the_renamed":"test"}', TestClass1);
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
      NestedClass test = deserialize('{"name":"failure"}', NestedClass);
    } catch(ex) {
      err = ex;
    }
    
    expect(err != null, true);
    expect(err is NoConstructorError, true);
  });
  
  test('deserialize: nested parsing', () {
    TestClass1 test = deserialize('{"name":"parent","child":{"name":"child"}}', TestClass1);
    expect(test.child.name, "child");
  });
  
  test('deserialize: using setter', () {
    TestSetter test = deserialize('{"name":"test"}', TestSetter);
    expect(test.name, 'test');
  });
  
  test('deserialize: generics list', () {
    ListClass test = deserialize('{"list": [{"name": "test1"}, {"name": "test2"}]}', ListClass);
    
    expect(test.list[0].name, 'test1');
    expect(test.list[1].name, 'test2');
  });
  
  test('deserialize: simple list', () {
    SimpleList list = deserialize('{"list":[1,2,3]}', SimpleList);
    expect(list.list[0], 1);
  });
  
  test('deserialize: generic map', () {
    MapClass test = deserialize('{"map": {"test": {"name": "test"}, "test2": {"name": "test2"}}}', MapClass);

    expect(test.map["test"].name, "test");
    expect(test.map["test2"].name, "test2");
  });

  test('deserialize: simple map', () {
    SimpleMap test = deserialize('{"map": {"test": "test", "test2": "test2"}}', SimpleMap);

    expect(test.map["test"], "test");    
    expect(test.map["test2"], "test2");
  });
  
  test('deserialize: simple map with type declaration', () {
    SimpleMapString test = deserialize('{"map": {"test": 1, "test2": 2}}', SimpleMapString);

    expect(test.map["test"], 1);    
    expect(test.map["test2"], 2);
  });
  
  test('deserialize: list of simple class', () {
    List<SimpleClass> test = deserializeList('[{"name":"test"},{"name":"test2"}]', SimpleClass);
    expect(test[0].name, "test");
    expect(test[1].name, "test2");
  });
  
  test('deserialize: just object', () {
    JustObject obj = deserialize('{"object":"test"}', JustObject);
    expect(obj.object, 'test');
  });

  test('mapToObject: SimpleMapString', () {
    SimpleMapString test = map({
      "map": {"test": 1, "test2": 2}
    }, SimpleMapString);

    expect(test.map["test"], 1);
    expect(test.map["test2"], 2);
  });

  test('mapListToObjectList: List of SimplemapString', () {
    List<SimpleMapString> test = mapList([{"map": {"test": 1, "test2": 2}}, {"map": {"test": 3, "test2": 4}}], SimpleMapString);
    expect(test[0].map["test"], 1);
    expect(test[0].map["test2"], 2);
    expect(test[1].map["test"], 3);
    expect(test[1].map["test2"], 4);
  });

  test('deserialize: DateTime', () {
    var date = new DateTime.now();
    var ctg = deserialize('{"testDate":"${date.toString()}"}', SimpleDateContainer);
    expect(ctg.testDate is DateTime, true);
    expect(ctg.testDate == date, true);
  });

  test('serialize: DateTime', () {
    var obj = new SimpleDateContainer()
        ..testDate = new DateTime.now();
    expect(serialize(obj), '{"testDate":"${obj.testDate.toIso8601String()}"}');
  });
}

class SimpleDateContainer {
  DateTime testDate;
}

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
  
  @Property("the_renamed")
  String renamed;

  TestClass1();
}

class JustObject {
  Object object;
}

class TestGetter {
  String _name;

  TestGetter([this._name]);

  String get name => _name;
}

class TestSetter {
  String _name;
  
  String get name => _name;
  set name(String n) => _name = n;
}

class NestedClass {
  String name;
  List list;
  TestGetter getter;

  NestedClass(this.name, this.list, this.getter);
}

class SimpleClass {
  String name;
  
  String toString() => "SimpleClass: name: ${name}";
}

class ListClass {
  List<SimpleClass> list;
}

class MapClass {
  Map<String, SimpleClass> map;
}

class SimpleList {
  List list;
}

class SimpleMap {
  Map map;
}

class SimpleMapString {
  Map<String,num> map;
}

