library example.serialize_ciclical;

import 'package:dson/dson.dart';

part 'serialize_generic.g.dart';

@serializable
class SomeObject<T> extends _$SomeObjectSerializable<T> {
  int id;

  List<T> genericList;
}

@serializable
class Person extends _$PersonSerializable {
  int id;

  String name;
}



main() {
  _initMirrors();

  var p = new Person()
    ..id = 1
    ..name = 'person 1';

  var so = new SomeObject()
    ..id = 1
    ..genericList = [p];

  var jsonStr = toJson(so);
  print('jsonStr: $jsonStr');
}