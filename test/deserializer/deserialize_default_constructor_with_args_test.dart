library deserializer.deserialize_default_constructor_with_args;

import 'package:dson/dson.dart';
import 'package:test/test.dart';

part 'deserialize_default_constructor_with_args_test.g.dart';

@serializable
class ClassWithConstructorWithArguments extends SerializableMap with _$ClassWithConstructorWithArgumentsSerializable {
  int id;
  String? name;

  ClassWithConstructorWithArguments({this.id = 0});
}

main() {
  _initMirrors();

  test('Deserialize Class with constructor with default arguments', () {
    var json = '{"id": 1, "name": "some name"}';
    ClassWithConstructorWithArguments result = fromJson(json, ClassWithConstructorWithArguments);
    expect(result.id, 1);
    expect(result.name, 'some name');
  });

}
