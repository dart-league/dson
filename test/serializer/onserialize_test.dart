library serializer.onserialize_serialize;

import 'package:dson/dson.dart';
import 'package:serializable/serializable.dart';
import 'package:test/test.dart';

part 'onserialize_test.g.dart';

@serializable
@OnSerialize('saveA')
class CoolClass extends _$CoolClassSerializable {
  var a;
  var b;
  void saveA() {
    b=a;
  }
  CoolClass(this.a);
}

void main() {
  _initMirrors();
  test('serialize: see OnSerialize', (){
    CoolClass cool = new CoolClass('nice');
    String coolString = toJson(cool);
    CoolClass cool2 = fromJson(coolString, CoolClass);
    expect(cool.b, 'nice');
    expect(cool2.b,'nice');
    expect(cool.a,cool.b);
  });
}