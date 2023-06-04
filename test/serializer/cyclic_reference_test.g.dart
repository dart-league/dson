// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cyclic_reference_test.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$EmployeeSerializable on SerializableMap {
  int? get id;
  String? get firstName;
  String? get lastName;
  Address? get address;
  Employee? get manager;
  set id(int? v);
  set firstName(String? v);
  set lastName(String? v);
  set address(Address? v);
  set manager(Employee? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
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
        address = fromSerialized(__value, () => Address());
        return;
      case 'manager':
        manager = fromSerialized(__value, () => Employee());
        return;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  Iterable<String> get keys => EmployeeClassMirror.fields?.keys ?? [];
}

mixin _$AddressSerializable on SerializableMap {
  int? get id;
  String? get street;
  String? get city;
  String? get country;
  String? get postalCode;
  Employee? get owner;
  set id(int? v);
  set street(String? v);
  set city(String? v);
  set country(String? v);
  set postalCode(String? v);
  set owner(Employee? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
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
        owner = fromSerialized(__value, () => Employee());
        return;
    }
    throwFieldNotFoundException(__key, 'Address');
  }

  Iterable<String> get keys => AddressClassMirror.fields?.keys ?? [];
}

mixin _$Employee2Serializable on SerializableMap {
  String? get firstName;
  String? get lastName;
  Address2? get address;
  Employee2? get manager;
  set firstName(String? v);
  set lastName(String? v);
  set address(Address2? v);
  set manager(Employee2? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'address':
        address = fromSerialized(__value, () => Address2());
        return;
      case 'manager':
        manager = fromSerialized(__value, () => Employee2());
        return;
    }
    throwFieldNotFoundException(__key, 'Employee2');
  }

  Iterable<String> get keys => Employee2ClassMirror.fields?.keys ?? [];
}

mixin _$Address2Serializable on SerializableMap {
  String? get street;
  String? get city;
  String? get country;
  String? get postalCode;
  Employee2? get owner;
  set street(String? v);
  set city(String? v);
  set country(String? v);
  set postalCode(String? v);
  set owner(Employee2? v);

  operator [](Object? __key) {
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

  operator []=(Object? __key, __value) {
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
        owner = fromSerialized(__value, () => Employee2());
        return;
    }
    throwFieldNotFoundException(__key, 'Address2');
  }

  Iterable<String> get keys => Address2ClassMirror.fields?.keys ?? [];
}

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

_Employee__Constructor([positionalParams, namedParams]) => Employee();

const $$Employee_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Employee_fields_firstName =
    DeclarationMirror(name: 'firstName', type: String);
const $$Employee_fields_lastName =
    DeclarationMirror(name: 'lastName', type: String);
const $$Employee_fields_address =
    DeclarationMirror(name: 'address', type: Address);
const $$Employee_fields_manager =
    DeclarationMirror(name: 'manager', type: Employee);

const EmployeeClassMirror = ClassMirror(
    name: 'Employee',
    constructors: {'': FunctionMirror(name: '', $call: _Employee__Constructor)},
    annotations: [cyclical],
    fields: {
      'id': $$Employee_fields_id,
      'firstName': $$Employee_fields_firstName,
      'lastName': $$Employee_fields_lastName,
      'address': $$Employee_fields_address,
      'manager': $$Employee_fields_manager
    },
    getters: ['id', 'firstName', 'lastName', 'address', 'manager'],
    setters: ['id', 'firstName', 'lastName', 'address', 'manager'],
    superclass: SerializableMap);

_Address__Constructor([positionalParams, namedParams]) => Address();

const $$Address_fields_id = DeclarationMirror(name: 'id', type: int);
const $$Address_fields_street = DeclarationMirror(name: 'street', type: String);
const $$Address_fields_city = DeclarationMirror(name: 'city', type: String);
const $$Address_fields_country =
    DeclarationMirror(name: 'country', type: String);
const $$Address_fields_postalCode =
    DeclarationMirror(name: 'postalCode', type: String);
const $$Address_fields_owner = DeclarationMirror(name: 'owner', type: Employee);

const AddressClassMirror = ClassMirror(
    name: 'Address',
    constructors: {'': FunctionMirror(name: '', $call: _Address__Constructor)},
    annotations: [cyclical],
    fields: {
      'id': $$Address_fields_id,
      'street': $$Address_fields_street,
      'city': $$Address_fields_city,
      'country': $$Address_fields_country,
      'postalCode': $$Address_fields_postalCode,
      'owner': $$Address_fields_owner
    },
    getters: ['id', 'street', 'city', 'country', 'postalCode', 'owner'],
    setters: ['id', 'street', 'city', 'country', 'postalCode', 'owner'],
    superclass: SerializableMap);

_Employee2__Constructor([positionalParams, namedParams]) => Employee2();

const $$Employee2_fields_firstName =
    DeclarationMirror(name: 'firstName', type: String);
const $$Employee2_fields_lastName =
    DeclarationMirror(name: 'lastName', type: String);
const $$Employee2_fields_address =
    DeclarationMirror(name: 'address', type: Address2);
const $$Employee2_fields_manager =
    DeclarationMirror(name: 'manager', type: Employee2);

const Employee2ClassMirror = ClassMirror(
    name: 'Employee2',
    constructors: {
      '': FunctionMirror(name: '', $call: _Employee2__Constructor)
    },
    annotations: [cyclical],
    fields: {
      'firstName': $$Employee2_fields_firstName,
      'lastName': $$Employee2_fields_lastName,
      'address': $$Employee2_fields_address,
      'manager': $$Employee2_fields_manager
    },
    getters: ['firstName', 'lastName', 'address', 'manager'],
    setters: ['firstName', 'lastName', 'address', 'manager'],
    superclass: SerializableMap);

_Address2__Constructor([positionalParams, namedParams]) => Address2();

const $$Address2_fields_street =
    DeclarationMirror(name: 'street', type: String);
const $$Address2_fields_city = DeclarationMirror(name: 'city', type: String);
const $$Address2_fields_country =
    DeclarationMirror(name: 'country', type: String);
const $$Address2_fields_postalCode =
    DeclarationMirror(name: 'postalCode', type: String);
const $$Address2_fields_owner =
    DeclarationMirror(name: 'owner', type: Employee2);

const Address2ClassMirror = ClassMirror(
    name: 'Address2',
    constructors: {'': FunctionMirror(name: '', $call: _Address2__Constructor)},
    annotations: [cyclical],
    fields: {
      'street': $$Address2_fields_street,
      'city': $$Address2_fields_city,
      'country': $$Address2_fields_country,
      'postalCode': $$Address2_fields_postalCode,
      'owner': $$Address2_fields_owner
    },
    getters: ['street', 'city', 'country', 'postalCode', 'owner'],
    setters: ['street', 'city', 'country', 'postalCode', 'owner'],
    superclass: SerializableMap);

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
  initClassMirrors({
    Employee: EmployeeClassMirror,
    Address: AddressClassMirror,
    Employee2: Employee2ClassMirror,
    Address2: Address2ClassMirror,
    Student: StudentClassMirror,
    Course: CourseClassMirror
  });
}
