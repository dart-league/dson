library deserialiazer.deserialize_enums_test;

import 'package:dson/dson.dart';
import 'package:test/test.dart';

part 'deserialize_enums_test.g.dart';

@reflectable
enum Color {
  BLUE,
  RED,
  GREEN
}

@serializable
class ObjectWithEnum extends SerializableMap with _$ObjectWithEnumSerializable {
  Color? color;
}

main() {

  _initMirrors();

  test('deserialize enum', () {
    expect(fromJson('0', Color), Color.BLUE);
  });

  test('deserialize object with enum', () {
    expect(fromJson('{"color":0}', ObjectWithEnum).color, Color.BLUE);
    expect(fromJson('{"color":1}', ObjectWithEnum).color, Color.RED);
    expect(fromJson('{"color":2}', ObjectWithEnum).color, Color.GREEN);
  });
}
