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

  test('deserialize enum', () {
    expect(fromJson('0', Color), Color.BLUE);
  });

  test('deserialize object with enum', () {
    ObjectWithEnum o ;
    expect(fromJson('{"color":0}', ObjectWithEnum).color, Color.BLUE);
    expect(fromJson('{"color":1}', ObjectWithEnum).color, Color.RED);
    expect(fromJson('{"color":2}', ObjectWithEnum).color, Color.GREEN);
  });
}