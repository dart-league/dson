library deserialiazer.deserialize_inmutable_class_test;

import 'package:dson/dson.dart';
import 'package:serializable/serializable.dart';
import 'package:test/test.dart';

part 'deserialize_inmutable_class_test.g.dart';

@serializable
class ImmutableClass extends _$ImmutableClassSerializable {
  final String name;

  @SerializedName("the_renamed")
  final String renamed;

  ImmutableClass(this.name, this.renamed);
}

@serializable
class ImmutableClassInvalidParameter extends _$ImmutableClassInvalidParameterSerializable {
  final String name;

  const ImmutableClassInvalidParameter(String aName) : name = aName;
}

main() {
  _initClassMirrors();

  test('deserialize: immutable class', () {
    ImmutableClass test = fromJson('{"name":"test", "the_renamed": "test"}', ImmutableClass);
    expect(test.name, equals("test"));
    expect(test.renamed, equals("test"));
  });

  test('deserialize: immutable class with invalid parameter', () {
    NoConstructorError err;
    try {
      fromJson('{"name":"failure"}', ImmutableClassInvalidParameter);
    } catch (ex) {
      err = ex;
    }

    expect(err != null, true);
    expect(err is NoConstructorError, true);
  });
}