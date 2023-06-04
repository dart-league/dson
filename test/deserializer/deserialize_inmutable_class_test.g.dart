// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deserialize_inmutable_class_test.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$ImmutableClassSerializable on SerializableMap {
  String? get name;
  String? get renamed;

  operator [](Object? __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'the_renamed':
        return renamed;
    }
    throwFieldNotFoundException(__key, 'ImmutableClass');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {}
    throwFieldNotFoundException(__key, 'ImmutableClass');
  }

  Iterable<String> get keys => ImmutableClassClassMirror.fields?.keys ?? [];
}

mixin _$ImmutableWithOptionalParametersSerializable on SerializableMap {
  int get id;
  String get name;

  operator [](Object? __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'ImmutableWithOptionalParameters');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {}
    throwFieldNotFoundException(__key, 'ImmutableWithOptionalParameters');
  }

  Iterable<String> get keys =>
      ImmutableWithOptionalParametersClassMirror.fields?.keys ?? [];
}

mixin _$ImmutableClassInvalidParameterSerializable on SerializableMap {
  String? get name;

  operator [](Object? __key) {
    switch (__key) {
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'ImmutableClassInvalidParameter');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {}
    throwFieldNotFoundException(__key, 'ImmutableClassInvalidParameter');
  }

  Iterable<String> get keys =>
      ImmutableClassInvalidParameterClassMirror.fields?.keys ?? [];
}

mixin _$ListWithImmutableClassSerializable on SerializableMap {
  List<ImmutableClass>? get immutables;
  set immutables(List<ImmutableClass>? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'immutables':
        return immutables;
    }
    throwFieldNotFoundException(__key, 'ListWithImmutableClass');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'immutables':
        immutables = fromSerialized(__value, [
          () => List<ImmutableClass>.empty(growable: true),
          () => ImmutableClass(__value['name'], __value['the_renamed'])
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListWithImmutableClass');
  }

  Iterable<String> get keys =>
      ListWithImmutableClassClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_ImmutableClass__Constructor([positionalParams, namedParams]) =>
    ImmutableClass(positionalParams[0], positionalParams[1]);

const $$ImmutableClass_fields_name =
    DeclarationMirror(name: 'name', type: String, isFinal: true);
const $$ImmutableClass_fields_renamed = DeclarationMirror(
  name: 'the_renamed',
  type: String,
  isFinal: true,
);

const ImmutableClassClassMirror = ClassMirror(
    name: 'ImmutableClass',
    constructors: {
      '': FunctionMirror(
          name: '',
          positionalParameters: [
            DeclarationMirror(name: 'name', type: String, isRequired: true),
            DeclarationMirror(
                name: 'the_renamed', type: String, isRequired: true)
          ],
          $call: _ImmutableClass__Constructor)
    },
    fields: {
      'name': $$ImmutableClass_fields_name,
      'the_renamed': $$ImmutableClass_fields_renamed
    },
    getters: ['name', 'the_renamed'],
    superclass: SerializableMap);

_ImmutableWithOptionalParameters__Constructor(
        [positionalParams, namedParams]) =>
    ImmutableWithOptionalParameters(
        id: namedParams['id'] ?? 0, name: namedParams['name'] ?? '');

const $$ImmutableWithOptionalParameters_fields_id =
    DeclarationMirror(name: 'id', type: int, isFinal: true);
const $$ImmutableWithOptionalParameters_fields_name =
    DeclarationMirror(name: 'name', type: String, isFinal: true);

const ImmutableWithOptionalParametersClassMirror = ClassMirror(
    name: 'ImmutableWithOptionalParameters',
    constructors: {
      '': FunctionMirror(
          name: '',
          namedParameters: {
            'id': DeclarationMirror(name: 'id', type: int, isNamed: true),
            'name': DeclarationMirror(name: 'name', type: String, isNamed: true)
          },
          $call: _ImmutableWithOptionalParameters__Constructor)
    },
    fields: {
      'id': $$ImmutableWithOptionalParameters_fields_id,
      'name': $$ImmutableWithOptionalParameters_fields_name
    },
    getters: ['id', 'name'],
    superclass: SerializableMap);

_ImmutableClassInvalidParameter__Constructor([positionalParams, namedParams]) =>
    ImmutableClassInvalidParameter(positionalParams[0]);

const $$ImmutableClassInvalidParameter_fields_name =
    DeclarationMirror(name: 'name', type: String, isFinal: true);

const ImmutableClassInvalidParameterClassMirror = ClassMirror(
    name: 'ImmutableClassInvalidParameter',
    constructors: {
      '': FunctionMirror(
          name: '',
          positionalParameters: [
            DeclarationMirror(name: 'aName', type: String, isRequired: true)
          ],
          $call: _ImmutableClassInvalidParameter__Constructor)
    },
    fields: {'name': $$ImmutableClassInvalidParameter_fields_name},
    getters: ['name'],
    superclass: SerializableMap);

_ListWithImmutableClass__Constructor([positionalParams, namedParams]) =>
    ListWithImmutableClass();

const $$ListWithImmutableClass_fields_immutables =
    DeclarationMirror(name: 'immutables', type: [List, ImmutableClass]);

const ListWithImmutableClassClassMirror = ClassMirror(
    name: 'ListWithImmutableClass',
    constructors: {
      '': FunctionMirror(name: '', $call: _ListWithImmutableClass__Constructor)
    },
    fields: {'immutables': $$ListWithImmutableClass_fields_immutables},
    getters: ['immutables'],
    setters: ['immutables'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    ImmutableClass: ImmutableClassClassMirror,
    ImmutableWithOptionalParameters: ImmutableWithOptionalParametersClassMirror,
    ImmutableClassInvalidParameter: ImmutableClassInvalidParameterClassMirror,
    ListWithImmutableClass: ListWithImmutableClassClassMirror
  });
}
