library IncorrectTypeTransform_test;

import 'package:test/test.dart';
import 'package:dson/dson.dart';

part 'IncorrectTypeTransform_test.g.dart';

@serializable
class SomeSerializable extends _$SomeSerializableSerializable {
}

main() {
  _initMirrors();

  test('IncorrectTypeTransform primitive', () {
    var incorrectTypeTransform = new IncorrectTypeTransform(10, 'bool', 'test');
    expect(incorrectTypeTransform.toString(),
        'IncorrectTypeTransform: Cannot transform field "test" because of incorrect type.'
            ' Requires [bool] and found [int]');
  });

  test('IncorrectTypeTransform Complex class', () {
    var incorrectTypeTransform = new IncorrectTypeTransform(new SomeSerializable(), 'bool', 'test');
    expect(incorrectTypeTransform.toString(),
        'IncorrectTypeTransform: Cannot transform field "test" because of incorrect type.'
            ' Requires [bool] and found [SomeSerializable]');
  });
}