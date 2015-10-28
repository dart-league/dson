import 'package:dson/dson.dart';
import 'package:test/test.dart';

@serializable
class ImmutableClass {
  final String name;

  @SerializedName("the_renamed")
  final String renamed;

  ImmutableClass(this.name, this.renamed);
}

@serializable
class ImmutableClassInvalidParameter {
  final String name;

  const ImmutableClassInvalidParameter(String aName) : name = aName;
}

main() {

  test('deserialize: immutable class', () {
    ImmutableClass test = fromJson('{"name":"test", "the_renamed": "test"}', ImmutableClass);
    expect(test.name, equals("test"));
    expect(test.renamed, equals("test"));
  });

  test('deserialize: immutable class with invalid parameter', () {
    NoConstructorError err;
    try {
      fromJson('{"name":"failure"}', ImmutableClassInvalidParameter);
    } catch(ex) {
      err = ex;
    }

    expect(err != null, true);
    expect(err is NoConstructorError, true);
  });
}