// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cyclical_bench.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$BookSerializable on SerializableMap {
  int? get id;
  String? get name;
  List<Author>? get authors;
  set id(int? v);
  set name(String? v);
  set authors(List<Author>? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
      case 'authors':
        authors = fromSerialized(__value,
            [() => List<Author>.empty(growable: true), () => Author()]);
        return;
    }
    throwFieldNotFoundException(__key, 'Book');
  }

  Iterable<String> get keys => BookClassMirror.fields?.keys ?? [];
}

mixin _$AuthorSerializable on SerializableMap {
  int? get id;
  String? get name;
  List<Book>? get books;
  set id(int? v);
  set name(String? v);
  set books(List<Book>? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
      case 'books':
        books = fromSerialized(
            __value, [() => List<Book>.empty(growable: true), () => Book()]);
        return;
    }
    throwFieldNotFoundException(__key, 'Author');
  }

  Iterable<String> get keys => AuthorClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Book__Constructor([positionalParams, namedParams]) => Book();

const $$Book_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Book_fields_name = DeclarationMirror(name: 'name', type: String);
const $$Book_fields_authors =
    DeclarationMirror(name: 'authors', type: [List, Author]);

const BookClassMirror = ClassMirror(
    name: 'Book',
    constructors: {'': FunctionMirror(name: '', $call: _Book__Constructor)},
    annotations: [cyclical, SomeAnnotation()],
    fields: {
      'id': $$Book_fields_id,
      'name': $$Book_fields_name,
      'authors': $$Book_fields_authors
    },
    getters: ['id', 'name', 'authors'],
    setters: ['id', 'name', 'authors'],
    superclass: SerializableMap);

_Author__Constructor([positionalParams, namedParams]) => Author();

const $$Author_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Author_fields_name = DeclarationMirror(name: 'name', type: String);
const $$Author_fields_books =
    DeclarationMirror(name: 'books', type: [List, Book]);

const AuthorClassMirror = ClassMirror(
    name: 'Author',
    constructors: {'': FunctionMirror(name: '', $call: _Author__Constructor)},
    annotations: [cyclical, SomeAnnotation()],
    fields: {
      'id': $$Author_fields_id,
      'name': $$Author_fields_name,
      'books': $$Author_fields_books
    },
    getters: ['id', 'name', 'books'],
    setters: ['id', 'name', 'books'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Book: BookClassMirror, Author: AuthorClassMirror});
}
