// GENERATED CODE - DO NOT MODIFY BY HAND

part of cyclical_bench;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$BookSerializable extends SerializableMap {
  int get id;
  String get name;
  List<Author> get authors;
  void set id(int v);
  void set name(String v);
  void set authors(List<Author> v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
      case 'authors':
        return authors;
    }
    throwFieldNotFoundException(__key, 'Book');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
      case 'authors':
        authors = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Book');
  }

  Iterable<String> get keys => BookClassMirror.fields.keys;
}

abstract class _$AuthorSerializable extends SerializableMap {
  int get id;
  String get name;
  List<Book> get books;
  void set id(int v);
  void set name(String v);
  void set books(List<Book> v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
      case 'books':
        return books;
    }
    throwFieldNotFoundException(__key, 'Author');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
      case 'books':
        books = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Author');
  }

  Iterable<String> get keys => AuthorClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_Book__Constructor([positionalParams, namedParams]) => new Book();

const $$Book_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Book_fields_name = const DeclarationMirror(name: 'name', type: String);
const $$Book_fields_authors =
    const DeclarationMirror(name: 'authors', type: const [List, Author]);

const BookClassMirror = const ClassMirror(name: 'Book', constructors: const {
  '': const FunctionMirror(name: '', $call: _Book__Constructor)
}, annotations: const [
  cyclical,
  const SomeAnnotation()
], fields: const {
  'id': $$Book_fields_id,
  'name': $$Book_fields_name,
  'authors': $$Book_fields_authors
}, getters: const [
  'id',
  'name',
  'authors'
], setters: const [
  'id',
  'name',
  'authors'
]);
_Author__Constructor([positionalParams, namedParams]) => new Author();

const $$Author_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Author_fields_name =
    const DeclarationMirror(name: 'name', type: String);
const $$Author_fields_books =
    const DeclarationMirror(name: 'books', type: const [List, Book]);

const AuthorClassMirror =
    const ClassMirror(name: 'Author', constructors: const {
  '': const FunctionMirror(name: '', $call: _Author__Constructor)
}, annotations: const [
  cyclical,
  const SomeAnnotation()
], fields: const {
  'id': $$Author_fields_id,
  'name': $$Author_fields_name,
  'books': $$Author_fields_books
}, getters: const [
  'id',
  'name',
  'books'
], setters: const [
  'id',
  'name',
  'books'
]);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Book: BookClassMirror, Author: AuthorClassMirror});
}
