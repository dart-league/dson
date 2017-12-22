// GENERATED CODE - DO NOT MODIFY BY HAND

part of IncorrectTypeTransform_test;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$SomeSerializableSerializable extends SerializableMap {
  operator [](Object __key) {
    switch (__key) {
    }
    throwFieldNotFoundException(__key, 'SomeSerializable');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
    }
    throwFieldNotFoundException(__key, 'SomeSerializable');
  }

  Iterable<String> get keys => SomeSerializableClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_SomeSerializable__Constructor([positionalParams, namedParams]) =>
    new SomeSerializable();

const SomeSerializableClassMirror = const ClassMirror(
    name: 'SomeSerializable',
    constructors: const {
      '': const FunctionMirror($call: _SomeSerializable__Constructor)
    });

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({SomeSerializable: SomeSerializableClassMirror});
  initFunctionMirrors({});
}
