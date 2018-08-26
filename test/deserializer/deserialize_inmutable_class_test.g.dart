// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_inmutable_class_test;

// **************************************************************************
// DsonGenerator
// **************************************************************************

abstract class _$ImmutableClassSerializable extends SerializableMap {
  String get name;
  String get renamed;

  operator [](Object __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'the_renamed':
        return renamed;
    }
    throwFieldNotFoundException(__key, 'ImmutableClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
    }
    throwFieldNotFoundException(__key, 'ImmutableClass');
  }

  Iterable<String> get keys => ImmutableClassClassMirror.fields.keys;
}

abstract class _$ImmutableWithOptionalParametersSerializable
    extends SerializableMap {
  int get id;
  String get name;

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'ImmutableWithOptionalParameters');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
    }
    throwFieldNotFoundException(__key, 'ImmutableWithOptionalParameters');
  }

  Iterable<String> get keys =>
      ImmutableWithOptionalParametersClassMirror.fields.keys;
}

abstract class _$ImmutableClassInvalidParameterSerializable
    extends SerializableMap {
  const _$ImmutableClassInvalidParameterSerializable();
  String get name;

  operator [](Object __key) {
    switch (__key) {
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'ImmutableClassInvalidParameter');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
    }
    throwFieldNotFoundException(__key, 'ImmutableClassInvalidParameter');
  }

  Iterable<String> get keys =>
      ImmutableClassInvalidParameterClassMirror.fields.keys;
}

abstract class _$ListWithImmutableClassSerializable extends SerializableMap {
  List<ImmutableClass> get immutables;
  void set immutables(List<ImmutableClass> v);

  operator [](Object __key) {
    switch (__key) {
      case 'immutables':
        return immutables;
    }
    throwFieldNotFoundException(__key, 'ListWithImmutableClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'immutables':
        immutables = fromSerialized(__value, [
          () => new List<ImmutableClass>(),
          () => new ImmutableClass(__value['name'], __value['the_renamed'])
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListWithImmutableClass');
  }

  Iterable<String> get keys => ListWithImmutableClassClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_ImmutableClass__Constructor([positionalParams, namedParams]) =>
    new ImmutableClass(positionalParams[0], positionalParams[1]);

const $$ImmutableClass_fields_name =
    const DeclarationMirror(name: 'name', type: String, isFinal: true);
const $$ImmutableClass_fields_renamed = const DeclarationMirror(
  name: 'the_renamed',
  type: String,
  isFinal: true,
);

const ImmutableClassClassMirror =
    const ClassMirror(name: 'ImmutableClass', constructors: const {
  '': const FunctionMirror(
      name: '',
      positionalParameters: const [
        const DeclarationMirror(name: 'name', type: String, isRequired: true),
        const DeclarationMirror(
            name: 'the_renamed', type: String, isRequired: true)
      ],
      $call: _ImmutableClass__Constructor)
}, fields: const {
  'name': $$ImmutableClass_fields_name,
  'the_renamed': $$ImmutableClass_fields_renamed
}, getters: const [
  'name',
  'the_renamed'
]);

_ImmutableWithOptionalParameters__Constructor(
        [positionalParams, namedParams]) =>
    new ImmutableWithOptionalParameters(
        id: namedParams['id'], name: namedParams['name']);

const $$ImmutableWithOptionalParameters_fields_id =
    const DeclarationMirror(name: 'id', type: int, isFinal: true);
const $$ImmutableWithOptionalParameters_fields_name =
    const DeclarationMirror(name: 'name', type: String, isFinal: true);

const ImmutableWithOptionalParametersClassMirror = const ClassMirror(
    name: 'ImmutableWithOptionalParameters',
    constructors: const {
      '': const FunctionMirror(
          name: '',
          namedParameters: const {
            'id': const DeclarationMirror(name: 'id', type: int, isNamed: true),
            'name': const DeclarationMirror(
                name: 'name', type: String, isNamed: true)
          },
          $call: _ImmutableWithOptionalParameters__Constructor)
    },
    fields: const {
      'id': $$ImmutableWithOptionalParameters_fields_id,
      'name': $$ImmutableWithOptionalParameters_fields_name
    },
    getters: const [
      'id',
      'name'
    ]);

_ImmutableClassInvalidParameter__Constructor([positionalParams, namedParams]) =>
    new ImmutableClassInvalidParameter(positionalParams[0]);

const $$ImmutableClassInvalidParameter_fields_name =
    const DeclarationMirror(name: 'name', type: String, isFinal: true);

const ImmutableClassInvalidParameterClassMirror = const ClassMirror(
    name: 'ImmutableClassInvalidParameter',
    constructors: const {
      '': const FunctionMirror(
          name: '',
          positionalParameters: const [
            const DeclarationMirror(
                name: 'aName', type: String, isRequired: true)
          ],
          $call: _ImmutableClassInvalidParameter__Constructor)
    },
    fields: const {
      'name': $$ImmutableClassInvalidParameter_fields_name
    },
    getters: const [
      'name'
    ]);

_ListWithImmutableClass__Constructor([positionalParams, namedParams]) =>
    new ListWithImmutableClass();

const $$ListWithImmutableClass_fields_immutables = const DeclarationMirror(
    name: 'immutables', type: const [List, ImmutableClass]);

const ListWithImmutableClassClassMirror = const ClassMirror(
    name: 'ListWithImmutableClass',
    constructors: const {
      '': const FunctionMirror(
          name: '', $call: _ListWithImmutableClass__Constructor)
    },
    fields: const {
      'immutables': $$ListWithImmutableClass_fields_immutables
    },
    getters: const [
      'immutables'
    ],
    setters: const [
      'immutables'
    ]);

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
