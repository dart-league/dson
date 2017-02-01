library serializar.serialize_enums_test;

import 'package:dson/dson.dart';
import 'package:serializable/serializable.dart';
import 'package:test/test.dart';

part 'serialize_enums_test.g.dart';

@reflectable
enum Color {
  BLUE,
  RED,
  GREEN
}

@serializable
class ObjectWithEnum extends _$ObjectWithEnumSerializable {
  Color color;
}

main() {
  _initClassMirrors();

  test('serialize enum', () {
    var o = Color.BLUE;
    expect(toJson(o), '0');
  });

  test('serialize object with enum', () {
    var o = new ObjectWithEnum()..color = Color.BLUE;
    expect(toJson(o), '{"color":0}');
    expect(toJson(o..color = Color.RED), '{"color":1}');
    expect(toJson(o..color = Color.GREEN), '{"color":2}');
  });
}