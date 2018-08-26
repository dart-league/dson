// GENERATED CODE - DO NOT MODIFY BY HAND

part of IncorrectTypeTransform_test;

// **************************************************************************
// DsonGenerator
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
// MirrorsGenerator
// **************************************************************************

_SomeSerializable__Constructor([positionalParams, namedParams]) =>
    new SomeSerializable();

const SomeSerializableClassMirror = const ClassMirror(
    name: 'SomeSerializable',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _SomeSerializable__Constructor)
    });

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({SomeSerializable: SomeSerializableClassMirror});
}
