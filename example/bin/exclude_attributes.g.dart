// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exclude_attributes.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$StudentSerializable on SerializableMap {
  int? get id;
  String? get name;
  List<Course>? get courses;
  set id(int? v);
  set name(String? v);
  set courses(List<Course>? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
      case 'courses':
        return courses;
    }
    throwFieldNotFoundException(__key, 'Student');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
      case 'courses':
        courses = fromSerialized(__value,
            [() => List<Course>.empty(growable: true), () => Course()]);
        return;
    }
    throwFieldNotFoundException(__key, 'Student');
  }

  Iterable<String> get keys => StudentClassMirror.fields?.keys ?? [];
}

mixin _$CourseSerializable on SerializableMap {
  int? get id;
  DateTime? get beginDate;
  List<Student>? get students;
  set id(int? v);
  set beginDate(DateTime? v);
  set students(List<Student>? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'beginDate':
        return beginDate;
      case 'students':
        return students;
    }
    throwFieldNotFoundException(__key, 'Course');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'beginDate':
        beginDate = fromSerializedDateTime(__value);
        return;
      case 'students':
        students = fromSerialized(__value,
            [() => List<Student>.empty(growable: true), () => Student()]);
        return;
    }
    throwFieldNotFoundException(__key, 'Course');
  }

  Iterable<String> get keys => CourseClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Student__Constructor([positionalParams, namedParams]) => Student();

const $$Student_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Student_fields_name = DeclarationMirror(name: 'name', type: String);
const $$Student_fields_courses =
    DeclarationMirror(name: 'courses', type: [List, Course]);

const StudentClassMirror = ClassMirror(
    name: 'Student',
    constructors: {'': FunctionMirror(name: '', $call: _Student__Constructor)},
    annotations: [cyclical],
    fields: {
      'id': $$Student_fields_id,
      'name': $$Student_fields_name,
      'courses': $$Student_fields_courses
    },
    getters: ['id', 'name', 'courses'],
    setters: ['id', 'name', 'courses'],
    superclass: SerializableMap);

_Course__Constructor([positionalParams, namedParams]) => Course();

const $$Course_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Course_fields_beginDate =
    DeclarationMirror(name: 'beginDate', type: DateTime);
const $$Course_fields_students =
    DeclarationMirror(name: 'students', type: [List, Student]);

const CourseClassMirror = ClassMirror(
    name: 'Course',
    constructors: {'': FunctionMirror(name: '', $call: _Course__Constructor)},
    annotations: [cyclical],
    fields: {
      'id': $$Course_fields_id,
      'beginDate': $$Course_fields_beginDate,
      'students': $$Course_fields_students
    },
    getters: ['id', 'beginDate', 'students'],
    setters: ['id', 'beginDate', 'students'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Student: StudentClassMirror, Course: CourseClassMirror});
}
