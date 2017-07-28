// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_inmutable_class_test;

// **************************************************************************
// Generator: InitMirrorsGenerator
// Target: library deserialiazer.deserialize_inmutable_class_test
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    ImmutableClass: ImmutableClassClassMirror,
    ImmutableClassInvalidParameter: ImmutableClassInvalidParameterClassMirror
  });
  initFunctionMirrors({});
}

// **************************************************************************
// Generator: DsonGenerator
// Target: class ImmutableClass
// **************************************************************************

abstract class _$ImmutableClassSerializable extends SerializableMap {
  String get name;
  String get renamed;

  operator [](Object key) {
    switch (key) {
      case 'name':
        return name;
      case 'renamed':
        return renamed;
    }
    throwFieldNotFoundException(key, 'ImmutableClass');
  }

  operator []=(Object key, value) {
    switch (key) {
    }
    throwFieldNotFoundException(key, 'ImmutableClass');
  }

  Iterable<String> get keys => ImmutableClassClassMirror.fields.keys;
}

_ImmutableClass__Constructor(params) =>
    new ImmutableClass(params['name'], params['renamed']);

const $$ImmutableClass_fields_name =
    const DeclarationMirror(type: String, isFinal: true);
const $$ImmutableClass_fields_renamed = const DeclarationMirror(
    type: String,
    isFinal: true,
    annotations: const [const SerializedName(r'the_renamed')]);

const ImmutableClassClassMirror =
    const ClassMirror(name: 'ImmutableClass', constructors: const {
  '': const FunctionMirror(parameters: const {
    'name': const DeclarationMirror(type: String),
    'renamed': const DeclarationMirror(type: String)
  }, call: _ImmutableClass__Constructor)
}, fields: const {
  'name': $$ImmutableClass_fields_name,
  'renamed': $$ImmutableClass_fields_renamed
}, getters: const [
  'name',
  'renamed'
]);

// **************************************************************************
// Generator: DsonGenerator
// Target: class ImmutableClassInvalidParameter
// **************************************************************************

abstract class _$ImmutableClassInvalidParameterSerializable
    extends SerializableMap {
  const _$ImmutableClassInvalidParameterSerializable();
  String get name;

  operator [](Object key) {
    switch (key) {
      case 'name':
        return name;
    }
    throwFieldNotFoundException(key, 'ImmutableClassInvalidParameter');
  }

  operator []=(Object key, value) {
    switch (key) {
    }
    throwFieldNotFoundException(key, 'ImmutableClassInvalidParameter');
  }

  Iterable<String> get keys =>
      ImmutableClassInvalidParameterClassMirror.fields.keys;
}

_ImmutableClassInvalidParameter__Constructor(params) =>
    new ImmutableClassInvalidParameter(params['aName']);

const $$ImmutableClassInvalidParameter_fields_name =
    const DeclarationMirror(type: String, isFinal: true);

const ImmutableClassInvalidParameterClassMirror = const ClassMirror(
    name: 'ImmutableClassInvalidParameter',
    constructors: const {
      '': const FunctionMirror(
          parameters: const {'aName': const DeclarationMirror(type: String)},
          call: _ImmutableClassInvalidParameter__Constructor)
    },
    fields: const {
      'name': $$ImmutableClassInvalidParameter_fields_name
    },
    getters: const [
      'name'
    ]);
