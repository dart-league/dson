library deserialiazer.deserialize_onserialize_test;

import 'package:dson/dson.dart';
import 'package:serializable/serializable.dart';
import 'package:test/test.dart';

part 'deserialize_onserialize_test.g.dart';

@serializable
@OnSerialize("saveA")
class CoolClass extends _$CoolClassSerializable {
  var a;
  var b;
  void saveA() {
    b=a;
  }
  CoolClass(this.a);
}

main(){
  _initMirrors();
  test('deserialize: see OnSerialize', (){
    CoolClass cool = fromMap(
      {
        "a":"nice",
        "b":"nice",
      },
      CoolClass,
    );
    expect(cool.a, "nice");
    expect(cool.b, "nice");
  });
}