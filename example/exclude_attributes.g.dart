// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.exclude_attributes;

// **************************************************************************
// Generator: InitMirrorsGenerator
// Target: library example.exclude_attributes
// **************************************************************************

_initMirrors() {
  initClassMirrors({Student: StudentClassMirror, Course: CourseClassMirror});
  initFunctionMirrors({});
}

// **************************************************************************
// Generator: DsonGenerator
// Target: class Student
// **************************************************************************

abstract class _$StudentSerializable extends SerializableMap {
  int get id;
  String get name;
  List<Course> get courses;
  void set id(int v);
  void set name(String v);
  void set courses(List<Course> v);

  operator [](Object key) {
    switch (key) {
      case 'id':
        return id;
      case 'name':
        return name;
      case 'courses':
        return courses;
    }
    throwFieldNotFoundException(key, 'Student');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'courses':
        courses = value;
        return;
    }
    throwFieldNotFoundException(key, 'Student');
  }

  Iterable<String> get keys => StudentClassMirror.fields.keys;
}

_Student__Constructor(params) => new Student();

const $$Student_fields_id = const DeclarationMirror(type: int);
const $$Student_fields_name = const DeclarationMirror(type: String);
const $$Student_fields_courses =
    const DeclarationMirror(type: const [List, Course]);

const StudentClassMirror =
    const ClassMirror(name: 'Student', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Student__Constructor)
}, annotations: const [
  cyclical
], fields: const {
  'id': $$Student_fields_id,
  'name': $$Student_fields_name,
  'courses': $$Student_fields_courses
}, getters: const [
  'id',
  'name',
  'courses'
], setters: const [
  'id',
  'name',
  'courses'
]);

// **************************************************************************
// Generator: DsonGenerator
// Target: class Course
// **************************************************************************

abstract class _$CourseSerializable extends SerializableMap {
  int get id;
  DateTime get beginDate;
  List<Student> get students;
  void set id(int v);
  void set beginDate(DateTime v);
  void set students(List<Student> v);

  operator [](Object key) {
    switch (key) {
      case 'id':
        return id;
      case 'beginDate':
        return beginDate;
      case 'students':
        return students;
    }
    throwFieldNotFoundException(key, 'Course');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'id':
        id = value;
        return;
      case 'beginDate':
        beginDate = value;
        return;
      case 'students':
        students = value;
        return;
    }
    throwFieldNotFoundException(key, 'Course');
  }

  Iterable<String> get keys => CourseClassMirror.fields.keys;
}

_Course__Constructor(params) => new Course();

const $$Course_fields_id = const DeclarationMirror(type: int);
const $$Course_fields_beginDate = const DeclarationMirror(type: DateTime);
const $$Course_fields_students =
    const DeclarationMirror(type: const [List, Student]);

const CourseClassMirror =
    const ClassMirror(name: 'Course', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Course__Constructor)
}, annotations: const [
  cyclical
], fields: const {
  'id': $$Course_fields_id,
  'beginDate': $$Course_fields_beginDate,
  'students': $$Course_fields_students
}, getters: const [
  'id',
  'beginDate',
  'students'
], setters: const [
  'id',
  'beginDate',
  'students'
]);
