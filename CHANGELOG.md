## Todo

* [ ] Add include parameter to serialize function
* [ ] Add uuid check over hashCode for cyclical references

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
