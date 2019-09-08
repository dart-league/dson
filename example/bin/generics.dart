library example.generics;

import 'package:dson/dson.dart';

part 'generics.g.dart';

@serializable
class Page<T> extends _$PageSerializable<T> {
  int size;

  int total;

  int number;

  List<T> items;
}

@serializable
class Person extends _$PersonSerializable {
  int id;

  String name;
}

main() {
  _initMirrors();

  var p = Person()
    ..id = 1
    ..name = 'person 1';

  var page = Page<Person>()
    ..size = 1
    ..number = 1
    ..total = 100
    ..items = [p];

  // tag::serialize[]
  var jsonStr = toJson(page);
  // end::serialize[]
  print('jsonStr: $jsonStr');

  // tag::deserialize[]
  Page<Person> page2 = fromJson(jsonStr, [() => Page<Person>(), {'items': [() => List<Person>(), Person]}]);
  // end::deserialize[]

  print('page2.size: ${page2.size}');
  print('page2.number: ${page2.number}');
  print('page2.total: ${page2.total}');
  print('page2.items[0].id: ${page2.items[0].id}');
  print('page2.items[0].name: ${page2.items[0].name}');
}
