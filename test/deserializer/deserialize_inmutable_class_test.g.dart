// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_inmutable_class_test;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$ImmutableClassSerializable extends SerializableMap {
  String get name;
  String get renamed;

  operator [](Object __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'renamed':
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

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_ImmutableClass__Constructor([positionalParams, namedParams]) =>
    new ImmutableClass(positionalParams[0], positionalParams[1]);

const $$ImmutableClass_fields_name =
    const DeclarationMirror(type: String, isFinal: true);
const $$ImmutableClass_fields_renamed = const DeclarationMirror(
    type: String,
    isFinal: true,
    annotations: const [const SerializedName(r'the_renamed')]);

const ImmutableClassClassMirror =
    const ClassMirror(name: 'ImmutableClass', constructors: const {
  '': const FunctionMirror(positionalParameters: const [
    const DeclarationMirror(name: 'name', type: String, isRequired: true),
    const DeclarationMirror(name: 'renamed', type: String, isRequired: true)
  ], $call: _ImmutableClass__Constructor)
}, fields: const {
  'name': $$ImmutableClass_fields_name,
  'renamed': $$ImmutableClass_fields_renamed
}, getters: const [
  'name',
  'renamed'
]);
_ImmutableClassInvalidParameter__Constructor([positionalParams, namedParams]) =>
    new ImmutableClassInvalidParameter(positionalParams[0]);

const $$ImmutableClassInvalidParameter_fields_name =
    const DeclarationMirror(type: String, isFinal: true);

const ImmutableClassInvalidParameterClassMirror = const ClassMirror(
    name: 'ImmutableClassInvalidParameter',
    constructors: const {
      '': const FunctionMirror(positionalParameters: const [
        const DeclarationMirror(name: 'aName', type: String, isRequired: true)
      ], $call: _ImmutableClassInvalidParameter__Constructor)
    },
    fields: const {
      'name': $$ImmutableClassInvalidParameter_fields_name
    },
    getters: const [
      'name'
    ]);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    ImmutableClass: ImmutableClassClassMirror,
    ImmutableClassInvalidParameter: ImmutableClassInvalidParameterClassMirror
  });
  initFunctionMirrors({});
}
