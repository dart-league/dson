library simple_bench;

import 'package:dson/dson.dart';

part 'simple_bench.g.dart';

@serializable
class Simple extends _$SimpleSerializable {
  String id;
  double value;
  bool flag;
}


@serializable
class Complex extends _$ComplexSerializable {
  Simple simple;
  List<Simple> list;
}

void main() {
  _initMirrors();

  String data = '''{
		"simple": {
			"id": "something",
			"value": 42.0,
			"flag": true
		},
		"list": [
			{"id":"item 0","value":0.0,"flag":true},
			{"id":"item 1","value":1.0,"flag":false},
			{"id":"item 2","value":2.0,"flag":true}
		]
	}''';

  int serializeTimeTotal = 0;
  int deserializeTimeTotal = 0;

  for (int j=0; j<50; j++) {
    var s = new Stopwatch()..start();

    for (int i=0; i<1000; i++)
    {
      var complex = new Complex()
        ..list = [
          new Simple()..id = "item 0"..value = 0.0..flag = true,
          new Simple()..id = "item 1"..value = 1.0..flag = false,
          new Simple()..id = "item 2"..value = 2.0..flag = true
        ]
        ..simple = (new Simple()..id = "something"..value = 42.0..flag = true);

      toJson(complex);
    }

    s.stop();

    int serializeTime = s.elapsedMicroseconds;
    serializeTimeTotal += serializeTime;

    s..reset()..start();

    for (int i=0; i<1000; i++)
    {
      fromJson(data, Complex);
    }

    s.stop();

    var deserializeTime = s.elapsedMicroseconds;
    deserializeTimeTotal += deserializeTime;
  }

  print("totals:\n\tserialization:\t\t${serializeTimeTotal/50}\n\tdeserialization:\t${deserializeTimeTotal/50}");
}
