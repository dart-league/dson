library deserialiazer.smart;

import 'package:serializable/serializable.dart';
import 'package:test/test.dart';
import 'package:dson/dson.dart';

part 'deserialize_smart_test.g.dart';

@serializable
class SmartClass extends _$SmartClassSerializable {
  String name;
  int age;
  SmartClass(this.name,this.age);
}

@serializable
class SmartNSmart extends _$SmartNSmartSerializable {
  Map whatever;
  SmartNSmart(this.whatever);
}

main(){
  _initMirrors();
  group("smart deserialize > ", (){
    test("SmartClass", (){
      SmartClass smrt = fromMap(
        {
          "name":"cool",
          "age": 13,
          "runtimeType": "SmartClass",
        },"detect");
      expect(smrt.name,"cool");
    });
    test("SmartNSmart",(){
      SmartNSmart sns = fromMap(
        {
          "whatever":{
            "a": {
              "name":"hello",
              "age":62,
              "runtimeType": "SmartClass",
            },
            "b": {
              "c": {
                "name":"there",
                "age":63,
                "runtimeType":"SmartClass",
              }
            },
            "d": [
              1,
              2,
              {
                "name":"three",
                "age":3,
                "runtimeType":"SmartClass",
              },
            ],
          },
          "runtimeType":"SmartNSmart",
        },dynamic
      );
      expect(sns.whatever["d"][2].name,"three");
      expect(sns.whatever["d"][2].runtimeType,SmartClass);
      expect(sns.whatever["a"].name,"hello");
    });
  });
}