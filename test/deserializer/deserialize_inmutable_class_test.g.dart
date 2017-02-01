// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_inmutable_class_test;

// **************************************************************************
// Generator: InitClassMirrorsGenerator
// Target: library deserialiazer.deserialize_inmutable_class_test
// **************************************************************************

_initClassMirrors() => initClassMirrors({
      ImmutableClass: ImmutableClassClassMirror,
      ImmutableClassInvalidParameter: ImmutableClassInvalidParameterClassMirror
    });

// **************************************************************************
// Generator: DsonGenerator
// Target: class ImmutableClass
// **************************************************************************

abstract class _$ImmutableClassSerializable extends SerializableMap {
  get name;
  get renamed;

  operator [](String key) {
    switch (key) {
      case 'name':
        return name;
      case 'renamed':
        return renamed;
    }
    throwFieldNotFoundException(key, "ImmutableClass");
  }

  operator []=(String key, value) {
    switch (key) {
    }
    throwFieldNotFoundException(key, "ImmutableClass");
  }

  get keys => const ['name', 'renamed'];
}

_ImmutableClass__Constructor(params) =>
    new ImmutableClass(params['name'], params['renamed']);

const $$ImmutableClass_fields_name =
    const DeclarationMirror(type: String, isFinal: true);
const $$ImmutableClass_fields_renamed = const DeclarationMirror(
    type: String,
    isFinal: true,
    annotations: const [const SerializedName('the_renamed')]);

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
  get name;

  operator [](String key) {
    switch (key) {
      case 'name':
        return name;
    }
    throwFieldNotFoundException(key, "ImmutableClassInvalidParameter");
  }

  operator []=(String key, value) {
    switch (key) {
    }
    throwFieldNotFoundException(key, "ImmutableClassInvalidParameter");
  }

  get keys => const ['name'];
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
