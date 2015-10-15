#Changelog

This file contains highlights of what changes on each version of the dson package.

##Todo
* Add include parameter to serialize function
* Make exclude and depth parameter receive Symbols instead Strings (Not Sure about this)

##Version 0.2.0
* Breaking change: reflectable < 0.3.0 is not supported
* Bump reflectable support to ^0.3.0

##Version 0.1.8+1
* Extend version support for reflectable package

##Version 0.1.8
* Add support for deserializing Maps of objects (in values)
* Support for excludes, depth, and fieldName when serializing Maps of objects

##Version 0.1.5
* Add exclude parameter to serialize function

## Version 0.1.4
* Create stack for deserializer to get objects previously deserialized from cyclical conversions.

## Version 0.1.3
* Handle cyclical reference for serializing lists

## Version 0.1.2
* Handle cyclical reference for serializing objects using annotation `@cyclical` and `depth` parameter to avoid cyclical reference errors and determine how deep the user wants to serialize the object.
