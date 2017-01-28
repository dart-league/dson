// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.cyclic_reference_serialize;

// **************************************************************************
// Generator: DsonGenerator
// Target: class Employee
// **************************************************************************

abstract class _$EmployeeSerializable extends SerializableMap {
  get id;
  get firstName;
  get lastName;
  get address;
  get manager;
  set id(v);
  set firstName(v);
  set lastName(v);
  set address(v);
  set manager(v);

  operator [](String key) {
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
    throwFieldNotFoundException(key, "Employee");
  }

  operator []=(String key, value) {
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
    throwFieldNotFoundException(key, "Employee");
  }

  get keys => const ['id', 'firstName', 'lastName', 'address', 'manager'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class Address
// **************************************************************************

abstract class _$AddressSerializable extends SerializableMap {
  get id;
  get street;
  get city;
  get country;
  get postalCode;
  get owner;
  set id(v);
  set street(v);
  set city(v);
  set country(v);
  set postalCode(v);
  set owner(v);

  operator [](String key) {
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
    throwFieldNotFoundException(key, "Address");
  }

  operator []=(String key, value) {
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
    throwFieldNotFoundException(key, "Address");
  }

  get keys => const ['id', 'street', 'city', 'country', 'postalCode', 'owner'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class Employee2
// **************************************************************************

abstract class _$Employee2Serializable extends SerializableMap {
  get firstName;
  get lastName;
  get address;
  get manager;
  set firstName(v);
  set lastName(v);
  set address(v);
  set manager(v);

  operator [](String key) {
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
    throwFieldNotFoundException(key, "Employee2");
  }

  operator []=(String key, value) {
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
    throwFieldNotFoundException(key, "Employee2");
  }

  get keys => const ['firstName', 'lastName', 'address', 'manager'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class Address2
// **************************************************************************

abstract class _$Address2Serializable extends SerializableMap {
  get street;
  get city;
  get country;
  get postalCode;
  get owner;
  set street(v);
  set city(v);
  set country(v);
  set postalCode(v);
  set owner(v);

  operator [](String key) {
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
    throwFieldNotFoundException(key, "Address2");
  }

  operator []=(String key, value) {
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
    throwFieldNotFoundException(key, "Address2");
  }

  get keys => const ['street', 'city', 'country', 'postalCode', 'owner'];
}

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
