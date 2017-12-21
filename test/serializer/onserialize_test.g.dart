// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.onserialize_serialize;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$CoolClassSerializable extends SerializableMap {
  dynamic get a;
  dynamic get b;
  set a(dynamic v);
  set b(dynamic v);
  void saveA();

  operator [](Object __key) {
    switch (__key) {
      case 'a':
        return a;
      case 'b':
        return b;
      case 'saveA':
        return saveA;
    }
    throwFieldNotFoundException(__key, 'CoolClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'a':
        a = __value;
        return;
      case 'b':
        b = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'CoolClass');
  }

  Iterable<String> get keys => CoolClassClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_CoolClass__Constructor([positionalParams, namedParams]) =>
    new CoolClass(positionalParams[0]);

const $$CoolClass_fields_a = const DeclarationMirror(type: dynamic);
const $$CoolClass_fields_b = const DeclarationMirror(type: dynamic);

const CoolClassClassMirror =
    const ClassMirror(name: 'CoolClass', constructors: const {
  '': const FunctionMirror(positionalParameters: const [
    const DeclarationMirror(name: 'a', type: dynamic, isRequired: true)
  ], $call: _CoolClass__Constructor)
}, annotations: const [
  const OnSerialize(r'saveA')
], fields: const {
  'a': $$CoolClass_fields_a,
  'b': $$CoolClass_fields_b
}, getters: const [
  'a',
  'b'
], setters: const [
  'a',
  'b'
], methods: const {
  'saveA': const FunctionMirror(
    name: 'saveA',
    returnType: null,
  )
});

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({CoolClass: CoolClassClassMirror});
  initFunctionMirrors({});
}
