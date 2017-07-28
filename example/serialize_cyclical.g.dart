// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.serialize_cyclical;

// **************************************************************************
// Generator: InitMirrorsGenerator
// Target: library example.serialize_cyclical
// **************************************************************************

_initMirrors() {
  initClassMirrors(
      {Employee: EmployeeClassMirror, Address: AddressClassMirror});
  initFunctionMirrors({});
}

// **************************************************************************
// Generator: DsonGenerator
// Target: class Employee
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
