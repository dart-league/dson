library cyclical_bench;

import 'package:dson/dson.dart';

part 'cyclical_bench.g.dart';

class SomeAnnotation extends Annotation {
  const SomeAnnotation();
}

@serializable
@cyclical
@SomeAnnotation()
class Book extends SerializableMap with _$BookSerializable {
  int? id;

  String? name;

  List<Author>? authors;
}

@serializable
@cyclical
@SomeAnnotation()
class Author extends SerializableMap with _$AuthorSerializable {
  int? id;

  String? name;

  List<Book>? books;
}

main() {
  _initMirrors();

  String booksJson = '''[{
    "id": 1,
    "name": "book 1",
		"authors": [
		  {"id": 1, "name": "author 1", "books": [{"id": 1}, {"id": 2}]},
		  {"id": 2, "name": "author 2", "books": [{"id": 1}, {"id": 3}]}
		]
	}, {
    "id": 2,
    "name": "book 2",
		"authors": [
		  {"id": 2, "name": "author 2", "books": [{"id": 1}, {"id": 3}]},
		  {"id": 3, "name": "author 3", "books": [{"id": 2}, {"id": 3}]}
		]
	}, {
    "id": 3,
    "name": "book 3",
		"authors": [
		  {"id": 3, "name": "author 3", "books": [{"id": 2}, {"id": 3}]},
		  {"id": 2, "name": "author 2", "books": [{"id": 1}, {"id": 3}]}
		]
	}]''';

  List<Book> books = [
    Book()..id = 1..name = "book 1",
    Book()..id = 2..name = "book 2",
    Book()..id = 3..name = "book 3"
  ];

  List<Author> authors = [
    Author()..id = 1..name = "author 1"..books = [books[0], books[1]],
    Author()..id = 2..name = "author 2"..books = [books[1], books[2]],
    Author()..id = 3..name = "author 3"..books = [books[0], books[2]],
  ];

  books[0].authors = [authors[0], authors[2]];
  books[1].authors = [authors[0], authors[1]];
  books[2].authors = [authors[1], authors[2]];

  int serializeTimeTotal = 0;
  int deserializeTimeTotal = 0;

//  print(toJson(books, depth: 'authors'));

  for (int j=0; j<50; j++) {
    var s = Stopwatch()..start();

    for (int i=0; i<1000; i++) {
      books = fromJson(booksJson, [() => List<Book>.empty(growable: true), Book]);
    }

    s.stop();

    deserializeTimeTotal += s.elapsedMicroseconds;

    s..reset()..start();

    for (int i=0; i<1000; i++) {
      toJson(books, expand: 'authors');
    }

    s.stop();

    serializeTimeTotal += s.elapsedMicroseconds;
  }

  print('''totals:
  serialization:   ${serializeTimeTotal/50/1000} ms
  deserialization: ${deserializeTimeTotal/50/1000} ms''');
}
