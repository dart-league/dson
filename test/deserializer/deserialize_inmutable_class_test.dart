library deserialiazer.deserialize_inmutable_class_test;

import 'package:dson/dson.dart';
import 'package:test/test.dart';

part 'deserialize_inmutable_class_test.g.dart';

@serializable
class ImmutableClass extends SerializableMap with _$ImmutableClassSerializable {
  final String? name;

  @SerializedName("the_renamed")
  final String? renamed;

  ImmutableClass(this.name, this.renamed);
}

@serializable
class ImmutableWithOptionalParameters extends SerializableMap with _$ImmutableWithOptionalParametersSerializable {
  final int id;
  final String name;

  ImmutableWithOptionalParameters({this.id = 0, this.name = ''});
}

@serializable
class ImmutableClassInvalidParameter extends SerializableMap with _$ImmutableClassInvalidParameterSerializable {
  final String? name;

  const ImmutableClassInvalidParameter(String? aName) : name = aName;
}

@serializable
class ListWithImmutableClass extends SerializableMap with _$ListWithImmutableClassSerializable {
  List<ImmutableClass>? immutables;
}

main() {
  _initMirrors();

  test('deserialize: immutable class.', () {
    ImmutableClass test = fromJson('{"name":"test", "the_renamed": "test"}', ImmutableClass);
    expect(test.name, equals("test"));
    expect(test.renamed, equals("test"));
  });

  test('deserialize: immutable class with optional parameters.', () {
    ImmutableWithOptionalParameters test = fromJson('{"id": 1, "name": "test"}', ImmutableWithOptionalParameters);
    expect(test.id, equals(1));
    expect(test.name, equals("test"));
  });

  test('deserialize: immutable class with invalid parameter', () {
    ImmutableClassInvalidParameter result = fromJson('{"name":"failure"}', ImmutableClassInvalidParameter);

    expect(result.name, null);
  });
}
