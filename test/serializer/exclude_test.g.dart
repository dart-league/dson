// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.exclude_test;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$EmployeeSerializable extends SerializableMap {
  int get id;
  String get firstName;
  String get lastName;
  Address get address;
  Employee get manager;
  set id(int v);
  set firstName(String v);
  set lastName(String v);
  set address(Address v);
  set manager(Employee v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'address':
        return address;
      case 'manager':
        return manager;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'address':
        address = fromSerialized(__value, () => new Address());
        return;
      case 'manager':
        manager = fromSerialized(__value, () => new Employee());
        return;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  Iterable<String> get keys => EmployeeClassMirror.fields.keys;
}

abstract class _$AddressSerializable extends SerializableMap {
  int get id;
  String get street;
  String get city;
  String get country;
  String get postalCode;
  Employee get owner;
  set id(int v);
  set street(String v);
  set city(String v);
  set country(String v);
  set postalCode(String v);
  set owner(Employee v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'street':
        return street;
      case 'city':
        return city;
      case 'country':
        return country;
      case 'postalCode':
        return postalCode;
      case 'owner':
        return owner;
    }
    throwFieldNotFoundException(__key, 'Address');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'street':
        street = __value;
        return;
      case 'city':
        city = __value;
        return;
      case 'country':
        country = __value;
        return;
      case 'postalCode':
        postalCode = __value;
        return;
      case 'owner':
        owner = fromSerialized(__value, () => new Employee());
        return;
    }
    throwFieldNotFoundException(__key, 'Address');
  }

  Iterable<String> get keys => AddressClassMirror.fields.keys;
}

abstract class _$Employee2Serializable extends SerializableMap {
  String get firstName;
  String get lastName;
  Address2 get address;
  Employee2 get manager;
  set firstName(String v);
  set lastName(String v);
  set address(Address2 v);
  set manager(Employee2 v);

  operator [](Object __key) {
    switch (__key) {
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'address':
        return address;
      case 'manager':
        return manager;
    }
    throwFieldNotFoundException(__key, 'Employee2');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'address':
        address = fromSerialized(__value, () => new Address2());
        return;
      case 'manager':
        manager = fromSerialized(__value, () => new Employee2());
        return;
    }
    throwFieldNotFoundException(__key, 'Employee2');
  }

  Iterable<String> get keys => Employee2ClassMirror.fields.keys;
}

abstract class _$Address2Serializable extends SerializableMap {
  String get street;
  String get city;
  String get country;
  String get postalCode;
  Employee2 get owner;
  set street(String v);
  set city(String v);
  set country(String v);
  set postalCode(String v);
  set owner(Employee2 v);

  operator [](Object __key) {
    switch (__key) {
      case 'street':
        return street;
      case 'city':
        return city;
      case 'country':
        return country;
      case 'postalCode':
        return postalCode;
      case 'owner':
        return owner;
    }
    throwFieldNotFoundException(__key, 'Address2');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'street':
        street = __value;
        return;
      case 'city':
        city = __value;
        return;
      case 'country':
        country = __value;
        return;
      case 'postalCode':
        postalCode = __value;
        return;
      case 'owner':
        owner = fromSerialized(__value, () => new Employee2());
        return;
    }
    throwFieldNotFoundException(__key, 'Address2');
  }

  Iterable<String> get keys => Address2ClassMirror.fields.keys;
}

abstract class _$StudentSerializable extends SerializableMap {
  int get id;
  String get name;
  List<Course> get courses;
  set id(int v);
  set name(String v);
  set courses(List<Course> v);

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
        courses = fromSerialized(
            __value, [() => new List<Course>(), () => new Course()]);
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
  set id(int v);
  set beginDate(DateTime v);
  set students(List<Student> v);

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
        beginDate = fromSerializedDateTime(__value);
        return;
      case 'students':
        students = fromSerialized(
            __value, [() => new List<Student>(), () => new Student()]);
        return;
    }
    throwFieldNotFoundException(__key, 'Course');
  }

  Iterable<String> get keys => CourseClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Employee__Constructor([positionalParams, namedParams]) => new Employee();

const $$Employee_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Employee_fields_firstName =
    const DeclarationMirror(name: 'firstName', type: String);
const $$Employee_fields_lastName =
    const DeclarationMirror(name: 'lastName', type: String);
const $$Employee_fields_address =
    const DeclarationMirror(name: 'address', type: Address);
const $$Employee_fields_manager =
    const DeclarationMirror(name: 'manager', type: Employee);

const EmployeeClassMirror =
    const ClassMirror(name: 'Employee', constructors: const {
  '': const FunctionMirror(name: '', $call: _Employee__Constructor)
}, annotations: const [
  cyclical
], fields: const {
  'id': $$Employee_fields_id,
  'firstName': $$Employee_fields_firstName,
  'lastName': $$Employee_fields_lastName,
  'address': $$Employee_fields_address,
  'manager': $$Employee_fields_manager
}, getters: const [
  'id',
  'firstName',
  'lastName',
  'address',
  'manager'
], setters: const [
  'id',
  'firstName',
  'lastName',
  'address',
  'manager'
]);

_Address__Constructor([positionalParams, namedParams]) => new Address();

const $$Address_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Address_fields_street =
    const DeclarationMirror(name: 'street', type: String);
const $$Address_fields_city =
    const DeclarationMirror(name: 'city', type: String);
const $$Address_fields_country =
    const DeclarationMirror(name: 'country', type: String);
const $$Address_fields_postalCode =
    const DeclarationMirror(name: 'postalCode', type: String);
const $$Address_fields_owner =
    const DeclarationMirror(name: 'owner', type: Employee);

const AddressClassMirror =
    const ClassMirror(name: 'Address', constructors: const {
  '': const FunctionMirror(name: '', $call: _Address__Constructor)
}, annotations: const [
  cyclical
], fields: const {
  'id': $$Address_fields_id,
  'street': $$Address_fields_street,
  'city': $$Address_fields_city,
  'country': $$Address_fields_country,
  'postalCode': $$Address_fields_postalCode,
  'owner': $$Address_fields_owner
}, getters: const [
  'id',
  'street',
  'city',
  'country',
  'postalCode',
  'owner'
], setters: const [
  'id',
  'street',
  'city',
  'country',
  'postalCode',
  'owner'
]);

_Employee2__Constructor([positionalParams, namedParams]) => new Employee2();

const $$Employee2_fields_firstName =
    const DeclarationMirror(name: 'firstName', type: String);
const $$Employee2_fields_lastName =
    const DeclarationMirror(name: 'lastName', type: String);
const $$Employee2_fields_address =
    const DeclarationMirror(name: 'address', type: Address2);
const $$Employee2_fields_manager =
    const DeclarationMirror(name: 'manager', type: Employee2);

const Employee2ClassMirror =
    const ClassMirror(name: 'Employee2', constructors: const {
  '': const FunctionMirror(name: '', $call: _Employee2__Constructor)
}, annotations: const [
  cyclical
], fields: const {
  'firstName': $$Employee2_fields_firstName,
  'lastName': $$Employee2_fields_lastName,
  'address': $$Employee2_fields_address,
  'manager': $$Employee2_fields_manager
}, getters: const [
  'firstName',
  'lastName',
  'address',
  'manager'
], setters: const [
  'firstName',
  'lastName',
  'address',
  'manager'
]);

_Address2__Constructor([positionalParams, namedParams]) => new Address2();

const $$Address2_fields_street =
    const DeclarationMirror(name: 'street', type: String);
const $$Address2_fields_city =
    const DeclarationMirror(name: 'city', type: String);
const $$Address2_fields_country =
    const DeclarationMirror(name: 'country', type: String);
const $$Address2_fields_postalCode =
    const DeclarationMirror(name: 'postalCode', type: String);
const $$Address2_fields_owner =
    const DeclarationMirror(name: 'owner', type: Employee2);

const Address2ClassMirror =
    const ClassMirror(name: 'Address2', constructors: const {
  '': const FunctionMirror(name: '', $call: _Address2__Constructor)
}, annotations: const [
  cyclical
], fields: const {
  'street': $$Address2_fields_street,
  'city': $$Address2_fields_city,
  'country': $$Address2_fields_country,
  'postalCode': $$Address2_fields_postalCode,
  'owner': $$Address2_fields_owner
}, getters: const [
  'street',
  'city',
  'country',
  'postalCode',
  'owner'
], setters: const [
  'street',
  'city',
  'country',
  'postalCode',
  'owner'
]);

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
  initClassMirrors({
    Employee: EmployeeClassMirror,
    Address: AddressClassMirror,
    Employee2: Employee2ClassMirror,
    Address2: Address2ClassMirror,
    Student: StudentClassMirror,
    Course: CourseClassMirror
  });
}
