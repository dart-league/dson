import 'package:dson/dson.dart';
import 'package:test/test.dart';

enum Color {
  BLUE,
  RED,
  GREEN
}

@serializable
class ObjectWithEnum {
  Color color;
}

main() {

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