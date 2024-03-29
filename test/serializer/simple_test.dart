library serializer.simple_test;

import 'package:dson/dson.dart';
import 'package:test/test.dart';

part 'simple_test.g.dart';

@serializable
class JustObject extends SerializableMap with _$JustObjectSerializable {
  Object? object;
}

@serializable
class TestGetter extends SerializableMap with _$TestGetterSerializable {
  TestGetter([this._name = '']);

  String _name;

  String get name => _name;
}

@serializable
class NestedClass extends SerializableMap with _$NestedClassSerializable {
  String name;
  List list;
  TestGetter getter;

  NestedClass(this.name, this.list, this.getter);
}

@serializable
class SetClass extends SerializableMap with _$SetClassSerializable {
  Set names;

  SetClass(this.names);
}

@serializable
class TestClass1 extends SerializableMap with _$TestClass1Serializable {
  String? name;
  bool? matter;
  num? number;
  List? list;
  Map? myMap;
  TestClass1? child;
  int? intNumber;

  @ignore
  bool? ignored;

  @SerializedName("the_renamed")
  String? renamed;

  TestClass1();
}

@serializable
class SimpleDateContainer extends SerializableMap with _$SimpleDateContainerSerializable {
  DateTime? testDate;
}


main() {
  _initMirrors();

  group('simple serialize >', () {
    test('serialize: simple String array test', () {
      String str = toJson(['test1', 'test2']);
      expect(str, '["test1","test2"]');
    });

    test('serialize: mixed nested arrays', () {
      String str = toJson([[1, 2, 3], [3, 4, 5]]);
      expect(str, '[[1,2,3],[3,4,5]]');

      str = toJson(["test1", ["a", "b"], [1, 2], 3]);
      expect(str, '["test1",["a","b"],[1,2],3]');
    });

    test('serialize: simple map test', () {
      Map map = {"key1": "val1", "key2": 2};

      String str = toJson(map);
      expect(str, '{"key1":"val1","key2":2}');
    });

    test('serialize: mixed nested map', () {
      Map map = {
        "itsAmap": {
          "key1": 1,
          "key2": "val"
        },
        "itsAarray": [1, 2, 3],
        "keyk": "valo"
      };

      String str = toJson(map);
      expect(str, '{"itsAmap":{"key1":1,"key2":"val"},"itsAarray":[1,2,3],"keyk":"valo"}');
    });

    test('serialize: simple object', () {
      var obj = {
        "test": "test"
      };
      JustObject test = JustObject();
      test.object = obj;

      expect(toJson(test), '{"object":{"test":"test"}}');
    });

    test('serialize: simple class', () {
      var test = TestClass1();
      test.name = "test1";
      String str = toJson(test);
      expect(str, '{"name":"test1"}');
    });

    test('serialize: ignore in object', () {
      var test = TestClass1();
      test.name = "test";
      test.ignored = true;
      expect(toJson(test), '{"name":"test"}');
    });

    test('serialize: renamed property of object', () {
      var test = TestClass1();
      test.renamed = "test";
      expect(toJson(test), '{"the_renamed":"test"}');
    });

    test('serialize: simple getter class', () {
      expect(toJson(TestGetter("test2")), '{"name":"test2"}');
    });

    test('serialize: nested class', () {
      expect(toJson(NestedClass("test", [1, 2, 3], TestGetter("get it"))),
          '{"name":"test","list":[1,2,3],"getter":{"name":"get it"}}');
    });

    test('serialize: Set class', () {
      expect(toJson(SetClass(Set()..add("a"))),
          '{"names":["a"]}');
    });

    test('serialize: DateTime', () {
      var obj = SimpleDateContainer()
        ..testDate = DateTime.now();
      expect(toJson(obj), '{"testDate":"${obj.testDate?.toIso8601String()}"}');
    });
  });
}
