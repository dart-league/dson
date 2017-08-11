// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.exclude_test;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$EmployeeSerializable extends SerializableMap {
  int get id;
  String get firstName;
  String get lastName;
  Address get address;
  Employee get manager;
  void set id(int v);
  void set firstName(String v);
  void set lastName(String v);
  void set address(Address v);
  void set manager(Employee v);

  operator [](Object key) {
    switch (key) {
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
    throwFieldNotFoundException(key, 'Employee');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'id':
        id = value;
        return;
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'address':
        address = value;
        return;
      case 'manager':
        manager = value;
        return;
    }
    throwFieldNotFoundException(key, 'Employee');
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
  void set id(int v);
  void set street(String v);
  void set city(String v);
  void set country(String v);
  void set postalCode(String v);
  void set owner(Employee v);

  operator [](Object key) {
    switch (key) {
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
    throwFieldNotFoundException(key, 'Address');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'id':
        id = value;
        return;
      case 'street':
        street = value;
        return;
      case 'city':
        city = value;
        return;
      case 'country':
        country = value;
        return;
      case 'postalCode':
        postalCode = value;
        return;
      case 'owner':
        owner = value;
        return;
    }
    throwFieldNotFoundException(key, 'Address');
  }

  Iterable<String> get keys => AddressClassMirror.fields.keys;
}

abstract class _$Employee2Serializable extends SerializableMap {
  String get firstName;
  String get lastName;
  Address2 get address;
  Employee2 get manager;
  void set firstName(String v);
  void set lastName(String v);
  void set address(Address2 v);
  void set manager(Employee2 v);

  operator [](Object key) {
    switch (key) {
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'address':
        return address;
      case 'manager':
        return manager;
    }
    throwFieldNotFoundException(key, 'Employee2');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'address':
        address = value;
        return;
      case 'manager':
        manager = value;
        return;
    }
    throwFieldNotFoundException(key, 'Employee2');
  }

  Iterable<String> get keys => Employee2ClassMirror.fields.keys;
}

abstract class _$Address2Serializable extends SerializableMap {
  String get street;
  String get city;
  String get country;
  String get postalCode;
  Employee2 get owner;
  void set street(String v);
  void set city(String v);
  void set country(String v);
  void set postalCode(String v);
  void set owner(Employee2 v);

  operator [](Object key) {
    switch (key) {
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
    throwFieldNotFoundException(key, 'Address2');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'street':
        street = value;
        return;
      case 'city':
        city = value;
        return;
      case 'country':
        country = value;
        return;
      case 'postalCode':
        postalCode = value;
        return;
      case 'owner':
        owner = value;
        return;
    }
    throwFieldNotFoundException(key, 'Address2');
  }

  Iterable<String> get keys => Address2ClassMirror.fields.keys;
}

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

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_Employee__Constructor(params) => new Employee();

const $$Employee_fields_id = const DeclarationMirror(type: int);
const $$Employee_fields_firstName = const DeclarationMirror(type: String);
const $$Employee_fields_lastName = const DeclarationMirror(type: String);
const $$Employee_fields_address = const DeclarationMirror(type: Address);
const $$Employee_fields_manager = const DeclarationMirror(type: Employee);

const EmployeeClassMirror =
    const ClassMirror(name: 'Employee', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Employee__Constructor)
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
_Address__Constructor(params) => new Address();

const $$Address_fields_id = const DeclarationMirror(type: int);
const $$Address_fields_street = const DeclarationMirror(type: String);
const $$Address_fields_city = const DeclarationMirror(type: String);
const $$Address_fields_country = const DeclarationMirror(type: String);
const $$Address_fields_postalCode = const DeclarationMirror(type: String);
const $$Address_fields_owner = const DeclarationMirror(type: Employee);

const AddressClassMirror =
    const ClassMirror(name: 'Address', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Address__Constructor)
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
_Employee2__Constructor(params) => new Employee2();

const $$Employee2_fields_firstName = const DeclarationMirror(type: String);
const $$Employee2_fields_lastName = const DeclarationMirror(type: String);
const $$Employee2_fields_address = const DeclarationMirror(type: Address2);
const $$Employee2_fields_manager = const DeclarationMirror(type: Employee2);

const Employee2ClassMirror =
    const ClassMirror(name: 'Employee2', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Employee2__Constructor)
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
_Address2__Constructor(params) => new Address2();

const $$Address2_fields_street = const DeclarationMirror(type: String);
const $$Address2_fields_city = const DeclarationMirror(type: String);
const $$Address2_fields_country = const DeclarationMirror(type: String);
const $$Address2_fields_postalCode = const DeclarationMirror(type: String);
const $$Address2_fields_owner = const DeclarationMirror(type: Employee2);

const Address2ClassMirror =
    const ClassMirror(name: 'Address2', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Address2__Constructor)
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

// **************************************************************************
// Generator: InitMirrorsGenerator
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
  initFunctionMirrors({});
}
