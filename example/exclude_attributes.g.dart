// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.exclude_attributes;

// **************************************************************************
// Generator: InitClassMirrorsGenerator
// Target: library example.exclude_attributes
// **************************************************************************

_initClassMirrors() =>
    initClassMirrors({Student: StudentClassMirror, Course: CourseClassMirror});

// **************************************************************************
// Generator: DsonGenerator
// Target: class Student
// **************************************************************************

abstract class _$StudentSerializable extends SerializableMap {
  get id;
  get name;
  get courses;
  set id(v);
  set name(v);
  set courses(v);

  operator [](String key) {
    switch (key) {
      case 'id':
        return id;
      case 'name':
        return name;
      case 'courses':
        return courses;
    }
    throwFieldNotFoundException(key, "Student");
  }

  operator []=(String key, value) {
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
    throwFieldNotFoundException(key, "Student");
  }

  get keys => const ['id', 'name', 'courses'];
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
  get id;
  get beginDate;
  get students;
  set id(v);
  set beginDate(v);
  set students(v);

  operator [](String key) {
    switch (key) {
      case 'id':
        return id;
      case 'beginDate':
        return beginDate;
      case 'students':
        return students;
    }
    throwFieldNotFoundException(key, "Course");
  }

  operator []=(String key, value) {
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
    throwFieldNotFoundException(key, "Course");
  }

  get keys => const ['id', 'beginDate', 'students'];
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
