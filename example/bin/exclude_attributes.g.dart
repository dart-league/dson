// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.exclude_attributes;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$StudentSerializable extends SerializableMap {
  int get id;
  String get name;
  List<Course> get courses;
  void set id(int v);
  void set name(String v);
  void set courses(List<Course> v);

  operator [](Object __key) {
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

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
      case 'courses':
        courses = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Student');
  }

  Iterable<String> get keys => StudentClassMirror.fields.keys;
}

abstract class _$CourseSerializable extends SerializableMap {
  int get id;
  DateTime get beginDate;
  List<Student> get students;
  void set id(int v);
  void set beginDate(DateTime v);
  void set students(List<Student> v);

  operator [](Object __key) {
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

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'beginDate':
        beginDate = __value;
        return;
      case 'students':
        students = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Course');
  }

  Iterable<String> get keys => CourseClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Student__Constructor([positionalParams, namedParams]) => new Student();

const $$Student_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Student_fields_name =
    const DeclarationMirror(name: 'name', type: String);
const $$Student_fields_courses =
    const DeclarationMirror(name: 'courses', type: const [List, Course]);

const StudentClassMirror =
    const ClassMirror(name: 'Student', constructors: const {
  '': const FunctionMirror(name: '', $call: _Student__Constructor)
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

_Course__Constructor([positionalParams, namedParams]) => new Course();

const $$Course_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Course_fields_beginDate =
    const DeclarationMirror(name: 'beginDate', type: DateTime);
const $$Course_fields_students =
    const DeclarationMirror(name: 'students', type: const [List, Student]);

const CourseClassMirror =
    const ClassMirror(name: 'Course', constructors: const {
  '': const FunctionMirror(name: '', $call: _Course__Constructor)
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

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({Student: StudentClassMirror, Course: CourseClassMirror});
}
