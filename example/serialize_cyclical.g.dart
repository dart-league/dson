// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.serialize_cyclical;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$EmployeeSerializable extends SerializableMap {
  int get key;
  String get firstName;
  String get lastName;
  Address get address;
  Employee get manager;
  set key(int v);
  set firstName(String v);
  set lastName(String v);
  set address(Address v);
  set manager(Employee v);

  operator [](Object __key) {
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

  operator []=(Object __key, __value) {
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
        address = __value;
        return;
      case 'manager':
        manager = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  Iterable<String> get keys => EmployeeClassMirror.fields.keys;
}

abstract class _$AddressSerializable extends SerializableMap {
  int get key;
  String get street;
  String get city;
  String get country;
  String get postalCode;
  Employee get owner;
  set key(int v);
  set street(String v);
  set city(String v);
  set country(String v);
  set postalCode(String v);
  set owner(Employee v);

  operator [](Object __key) {
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

  operator []=(Object __key, __value) {
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
        owner = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Address');
  }

  Iterable<String> get keys => AddressClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_Employee__Constructor([positionalParams, namedParams]) => new Employee();

const $$Employee_fields_key =
    const DeclarationMirror(name: 'key', type: int, annotations: const [uId]);
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
  'key': $$Employee_fields_key,
  'firstName': $$Employee_fields_firstName,
  'lastName': $$Employee_fields_lastName,
  'address': $$Employee_fields_address,
  'manager': $$Employee_fields_manager
}, getters: const [
  'key',
  'firstName',
  'lastName',
  'address',
  'manager'
], setters: const [
  'key',
  'firstName',
  'lastName',
  'address',
  'manager'
]);
_Address__Constructor([positionalParams, namedParams]) => new Address();

const $$Address_fields_key =
    const DeclarationMirror(name: 'key', type: int, annotations: const [uId]);
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
  'key': $$Address_fields_key,
  'street': $$Address_fields_street,
  'city': $$Address_fields_city,
  'country': $$Address_fields_country,
  'postalCode': $$Address_fields_postalCode,
  'owner': $$Address_fields_owner
}, getters: const [
  'key',
  'street',
  'city',
  'country',
  'postalCode',
  'owner'
], setters: const [
  'key',
  'street',
  'city',
  'country',
  'postalCode',
  'owner'
]);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors(
      {Employee: EmployeeClassMirror, Address: AddressClassMirror});
  initFunctionMirrors({});
}
