library example.serialize_final_objects;

import 'package:dson/dson.dart';

part 'immutable_objects.g.dart';

@serializable
class Person extends SerializableMap with _$PersonSerializable {
  final int id;
  final String? name;

  Person({this.id = 0, this.name});
}

main() {
  _initMirrors();

  var p1 = Person(id: 1, name: 'Jhon Doe');

  var p1Json = toJson(p1);

  print('p1Json: $p1Json');

  var p1FromJson = fromJson(p1Json, Person);

  print('p1FromJson: (id: ${p1FromJson.id}, name: ${p1FromJson.name})');
}
