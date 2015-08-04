library test_dson;

import 'package:logging/logging.dart';

import 'serializer/cyclic_reference_test.dart' as serializer_cyclic_reference_test;
import 'serializer/simple_test.dart' as serializer_simple_test;
import 'serializer/exclude_test.dart' as serializer_exclude_test;
import 'deserializer/deserializer_test.dart' as deserializer_test;

void main() {
//  Logger.root.level = Level.ALL;
//  Logger.root.level = Level.INFO;
//  Logger.root.onRecord.listen((LogRecord rec) {
//    print('${rec.level.name}: ${rec.time}: ${rec.message}');
//  });

  serializer_simple_test.main();

  serializer_cyclic_reference_test.main();

  serializer_exclude_test.main();

  deserializer_test.main();

}

