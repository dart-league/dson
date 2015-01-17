#Changelog

This file contains highlights of what changes on each version of the dson package.

## Todo
* Create stack for deserializer to get objects previously deserialized from cyclical conversions.

## Version 0.1.3
* Handle cyclical reference for serializing lists

## Version 0.1.2
* Handle cyclical reference for serializing objects using annotation `@cyclical` and `depth` parameter to avoid cyclical reference errors and determine how deep the user wants to serialize the object.
