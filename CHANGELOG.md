## Todo

* [ ] Add include parameter to serialize function
* [x] ~~Add uuid check over hashCode for cyclical references~~
* [ ] Add types to serialized values
* [ ] Add support for hal-json
* [ ] Add support for schema-json
* [ ] Add support for csv
* [ ] Add support for MessagePack
* [ ] Add support for converting to array of values-only

## 0.17.0

- Upgrade `build_test` to `^1.2.0`
- Upgrade `built_mirrors` to `^0.12.0`
- Upgrade `serializable` to `^0.13.0`

## 0.16.0

- Add `analysis_options` and check for unnecessary `new` and `const` keywords
- Remove dependency on `serializable_core` and `built_mirrors_core`
- Add dependency to `serializable` and `built_mirrors`
- Change builder from `PartBuilder` to `SharedPartBuilder`, this way generator can run alongside with other generators
- Make builder `auto_apply: dependents`. This way builder only run on direct dependents

## 0.15.6
   
- upgrade `analyzer` to version `^0.36.0`

## 0.15.5

- fix set null values to attributes (fixes: #45)

## 0.15.4+1

- fix docs

## 0.15.4

- upgrade `built_mirrors_core` to version `^0.10.4` (fixes: #44).

## 0.15.3

- Enhance serialization of generics
- Add ability to deserialize generics
- upgrade `analyzer` to version `^0.34.0`
- upgrade `serializable_core` to version `^0.11.2`

## 0.15.2

- upgrade `analyzer` to version `^0.33.0`
- upgrade `build_runner` to version `^1.0.0`
- upgrade `build` to version `^1.0.1`
- upgrade `built_mirrors_core` to version `^0.10.1`
- upgrade `serializable_core` to version `^0.11.1`
- upgrade `dson_core` to version `^0.15.2`

## 0.15.1

- fix deserialize class with default constructor with optional args (fix #37).
- deserialize immutable with wrong constructor-parameter name now is possible. However now it returns null for that parameter after deserializing instead throwing `NoConstructorFound` error.

## 0.15.0
   
- upgrade `serializable_core` to version `0.11.0` since
 this version now generates from methods which now allows
 convert objects from generic values.
- move `SerializedName` to `built_mirrors` library since
 the serialized name is now generated at build time

## 0.14.0

- upgrade `source_gen` to version `^0.9.0`
- upgrade `analyzer` to version `^0.32.0`
- upgrade `built_mirrors_core` to version `^0.9.0`
- upgrade `serializable_core` to version `^0.10.0`
- upgrade `build_runner` to version `^0.9.0`
- upgrade `test` to version `^1.0.0`

## 0.13.3

- fix #34 and fix #35

## 0.13.2
   
- fix error serializing immutable with optional parameters

## 0.13.1

- upgrade `source_gen` to version `^0.8.0`
- add extend object sample to README

## 0.13.0

- upgrade `serializable_core` to version `0.9.0` (fixes #32)

## 0.12.0

- add `dson_core` package
- upgrade `build_runner` to version `0.7.0`
- upgrade `build` to version `0.12.0`

## 0.11.0

- add caches for `SerializedName` and `Ignored` annotations
- upgrade to `serializable@0.8.0` and `built_mirrors@0.7.1`

## 0.10.2

- fixes #23: The getter 'name' was called on null

## 0.10.1

- deserialize int to double if required (fixes #22)

## 0.10.0

- Upgrade to `built_mirrors@^0.6.0` and `serializable@^0.7.0`

## 0.9.1

- Add `@uId` annotation

## 0.9.0

- upgrade `serializable` to version `^0.6.0`
- upgrade `buidl_mirrors` to version `^0.5.0`
- upgrade `build_runner` to version `^0.4.0`
- upgrade `build` to version `^0.10.0`

## 0.8.0

- upgrade `serializable` to version `0.5.0`
- add other dependencies needed

## 0.7.0

- upgrade `serializable` to version `0.4.0`

## 0.6.0

- remove `packageName` parameter from `phase` and make `globs` parameter optional
- upgrade `serializable` to version `^0.3.0`

## 0.5.0

- upgrade to new version of `serializable`
- change usage of `_initClassMirrors` to `_initMirrors`

## 0.4.1

* use latest version of `serializable` and `built_mirrors`
* change use of `BuiltMirrorsGenerator` to `ClassMirrorsGenerator`
* add `InitClassMirrorsGenerator` to `phase.dart`

## 0.4.0

* Migrate code to use [serializable](https://pub.dartlang.org/packages/serializable)
and [built_mirros](https://pub.dartlang.org/packages/built_mirrors)
instead [reflectable](https://pub.dartlang.org/packages/reflectable)
* create `DsonGenerator` and `dsonPhase`

## 0.3.3

* Correct bug about deserializing `var` types
* Add support for deserializing generic types in the browser

## 0.3.2

* Add `Set` deserializer

## 0.3.1

* Add check for `double` on `deserializer._convertValue`
* add check `if (valueType is DynamicMirrorImpl)` to `deserializer._convertValue`
to convert `var` or `dynamic` attributes

## 0.3.0+1

* Update to reflectable 0.5.1

## 0.3.0

* Update to reflectable 0.4.0
* add enum support
* rename methods:
    * `serialize` to `toJson`
    * `deserialize` to `fromJson`
    * `deserializeList` to `fromJsonList`
    * `deserializeMap` to `fromJsonMap`
    * `objectToSerializable` remains with the same name
    * `toMap` method was created
    * `map` to `fromMap`
    * `mapList` to `fromMapList`

## 0.2.0
* Breaking change: reflectable < 0.3.0 is not supported
* Bump reflectable support to ^0.3.0

## 0.1.8+1
* Extend version support for reflectable package

## 0.1.8
* Add support for deserializing Maps of objects (in values)
* Support for excludes, depth, and fieldName when serializing Maps of objects

## 0.1.5
* Add exclude parameter to serialize function

## 0.1.4
* Create stack for deserializer to get objects previously deserialized from cyclical conversions.

## 0.1.3
* Handle cyclical reference for serializing lists

## 0.1.2
* Handle cyclical reference for serializing objects using annotation `@cyclical` and `depth` parameter to avoid cyclical reference errors and determine how deep the user wants to serialize the object.
