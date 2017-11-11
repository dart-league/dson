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
  });
}