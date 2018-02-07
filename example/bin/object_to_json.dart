library example.object_to_json; // this line is needed for the generator

import 'package:dson/dson.dart';

part 'object_to_json.g.dart'; // this line is needed for the generator

@serializable
class Person extends _$PersonSerializable {
  int id;
  String firstName;
  var lastName; //This is a dynamic attribute could be String, int, double, num, date or another type
  double height;
  DateTime dateOfBirth;

  @SerializedName("renamed")
  String otherName;

  @ignore
  String notVisible;

  // private members are never serialized
  String _private = "name";

  String get doGetter => _private;
}

void main() {
  _initMirrors();

  Person object = new Person()
    ..id = 1
    ..firstName = "Jhon"
    ..lastName = "Doe"
    ..height = 1.8
    ..dateOfBirth = new DateTime(1988, 4, 1, 6, 31)
    ..otherName = "Juan"
    ..notVisible = "hallo";

  String jsonString = toJson(object);
  print(jsonString);
  // will print: '{"id":1,"firstName":"Jhon","lastName":"Doe","height":1.8,"dateOfBirth":"1988-04-01T06:31:00.000","renamed":"Juan","doGetter":"name"}'
}