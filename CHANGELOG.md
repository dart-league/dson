#Changelog

This file contains highlights of what changes on each version of the dson package.

## Todo

* Add include parameter to serialize function
* Add uuid check over hashcode for cyclical references

## Version 0.3.1

* Add check for `double` on `deserializer._convertValue`
* add check `if (valueType is DynamicMirrorImpl)` to `deserializer._convertValue`
to convert `var` or `dynamic` attributes

## Version 0.3.0+1

* Update to reflectable 0.5.1

## Version 0.3.0

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

## Version 0.2.0
* Breaking change: reflectable < 0.3.0 is not supported
* Bump reflectable support to ^0.3.0

## Version 0.1.8+1
* Extend version support for reflectable package

## Version 0.1.8
* Add support for deserializing Maps of objects (in values)
* Support for excludes, depth, and fieldName when serializing Maps of objects

## Version 0.1.5
* Add exclude parameter to serialize function

## Version 0.1.4
* Create stack for deserializer to get objects previously deserialized from cyclical conversions.

## Version 0.1.3
* Handle cyclical reference for serializing lists

## Version 0.1.2
* Handle cyclical reference for serializing objects using annotation `@cyclical` and `depth` parameter to avoid cyclical reference errors and determine how deep the user wants to serialize the object.
