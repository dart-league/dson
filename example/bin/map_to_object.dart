library example.map_to_object; // this line is needed for the generator

import 'package:dson/dson.dart';

// replace `main` for the name of your file
part 'map_to_object.g.dart'; // this line is needed for the generator

@serializable
class EntityClass extends _$EntityClassSerializable {
  String name;
  String _setted;

  @SerializedName("renamed")
  bool otherName;

  @ignore
  String notVisible;

  List<EntityClass> children;

  set setted(String s) => _setted = s;

  String get setted => _setted;
}

void main() {
  _initMirrors();

  EntityClass object = fromMap({
    "name": "test",
    "renamed": true,
    "notVisible": "it is",
    "setted": "awesome"
  }, EntityClass);
  print(object.name); // > test
  print(object.otherName); // > blub
  print(object.notVisible); // > it is
  print(object.setted); // > awesome

// to deserialize a list of items use [fromJsonList]
  List<EntityClass> list = fromMap([
    {"name": "test",
      "children": [
        {"name": "child1"},
        {"name": "child2"}
      ]
    },
    {"name": "test2"}
  ], [List, EntityClass]);
  print(list.length); // > 2
  print(list[0].name); // > test
  print(list[0].children[0].name); // > child1
}
