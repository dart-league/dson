// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serialize_cyclical.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$EmployeeSerializable on SerializableMap {
  int? get key;
  String? get firstName;
  String? get lastName;
  Address? get address;
  Employee? get manager;
  set key(int? v);
  set firstName(String? v);
  set lastName(String? v);
  set address(Address? v);
  set manager(Employee? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'key':
        return key;
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
      case 'key':
        key = __value;
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
  int? get key;
  String? get street;
  String? get city;
  String? get country;
  String? get postalCode;
  Employee? get owner;
  set key(int? v);
  set street(String? v);
  set city(String? v);
  set country(String? v);
  set postalCode(String? v);
  set owner(Employee? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'key':
        return key;
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
      case 'key':
        key = __value;
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

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_Employee__Constructor([positionalParams, namedParams]) => Employee();

const $$Employee_fields_key =
    DeclarationMirror(name: 'key', type: int, annotations: [uId]);
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
      'key': $$Employee_fields_key,
      'firstName': $$Employee_fields_firstName,
      'lastName': $$Employee_fields_lastName,
      'address': $$Employee_fields_address,
      'manager': $$Employee_fields_manager
    },
    getters: ['key', 'firstName', 'lastName', 'address', 'manager'],
    setters: ['key', 'firstName', 'lastName', 'address', 'manager'],
    superclass: SerializableMap);

_Address__Constructor([positionalParams, namedParams]) => Address();

const $$Address_fields_key =
    DeclarationMirror(name: 'key', type: int, annotations: [uId]);
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
      'key': $$Address_fields_key,
      'street': $$Address_fields_street,
      'city': $$Address_fields_city,
      'country': $$Address_fields_country,
      'postalCode': $$Address_fields_postalCode,
      'owner': $$Address_fields_owner
    },
    getters: ['key', 'street', 'city', 'country', 'postalCode', 'owner'],
    setters: ['key', 'street', 'city', 'country', 'postalCode', 'owner'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors(
      {Employee: EmployeeClassMirror, Address: AddressClassMirror});
}
