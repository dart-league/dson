# dson

dson is a dart library which converts Dart Objects into their JSON representation. It helps you keep your code clean of `fromJSON` and `toJSON` functions by using dart:mirrors reflection. **It works after dart2js compiling.**

This library is a fork from [dartson](https://github.com/eredo/dartson). I removed transformers and add datetime parsing and other minor changes.

## Serializing objects

```dart
library example;

import 'package:dson/dson.dart';

@MirrorsUsed(targets:const['example'],override:'*')
import 'dart:mirrors';

class EntityClass {
  String name;
  
  @Property(name:"renamed")
  bool otherName;
  
  @ignore
  String notVisible;
  
  // private members are never serialized
  String _private = "name";
  
  String get doGetter => _private;
}

void main() {
  EntityClass object = new EntityClass()
    ..name = "test";
    ..otherName = "blub";
    ..notVisible = "hallo";
  
  String jsonString = serialize(object);
  print(jsonString);
  // will return: '{"name":"test","renamed":"blub","doGetter":"name"}'
}
```

## Serializing Cyclical Objects

To serialize objects that contains Cyclical References it would be needed to use the annotation `@cyclical`. If this annotation is present and the `deep` variable is not set then the non-primitive objects are not going to be parsed and only the id or hashmap is going to be present. Let's see next to objects:

```dart

    library example;
    
    import 'package:dson/dson.dart';
    
    @MirrorsUsed(targets:const['example'],override:'*')
    import 'dart:mirrors';
    
    @cyclical
    class Employee {
      int id;
      String firstName;
      String lastName;
      
      Address address;
      
      Employee manager;
    }
    
    @cyclical
    class Address {
      int id;
      String street;
      String city;
      String country;
      String postalCode;
      
      Employee owner;
    }
    
    
    void main() {
  
      var manager = new Employee()
        ..id = 1
        ..firstName = 'Jhon'
        ..lastName = 'Doe';
      manager.address = new Address()
          ..id = 1
          ..street = 'some street'
          ..city = 'Miami'
          ..country = 'USA'
          ..owner = manager;
    
      var employee = new Employee()
        ..id = 2
        ..firstName = 'Luis'
        ..lastName = 'Vargas'
        ..manager = manager;
      employee.address = new Address()
        ..id = 2
        ..street = 'some street'
        ..city = 'Miami'
        ..country = 'USA'
        ..owner = employee;
        
      print(serialize(employee)); //will print: '{"id":2,"firstName":"Luis","lastName":"Vargas","address":{"id":2},"manager":{"id":1}}'
      
      print(serialize(employee.address)); // will print: '{"id":2,"street":"some street","city":"Miami","country":"USA","owner":{"id":2}}'
      
      // depth is a optional parameter that could be a list that should contains strings or Maps<String, Map>
      print(serialize(employee, depth: ['address']));
      /* will print:
               '{"id":2,"firstName":"Luis","lastName":"Vargas",'
                  '"address":{"id":2,"street":"some street","city":"Miami","country":"USA","owner":{"id":2}},'
                  '"manager":{"id":1}}'
      */
      
      print(serialize(employee, depth: [{'manager': ['address']}, 'address']));
      /* will print:
             '{"id":2,"firstName":"Luis","lastName":"Vargas",'
                '"address":{"id":2,"street":"some street","city":"Miami","country":"USA",'
                  '"owner":{"id":2}},'
                '"manager":{"id":1,"firstName":"Jhon","lastName":"Doe",'
                  '"address":{"id":1,"street":"some street","city":"Miami","country":"USA","owner":{"id":1}}}}');
      */
    }
```

as you can see employee has an address and the address has the employee as owner. If the property `id` is not present in the object then it is going to take the `hashcode` value from the object as reference. And finally, the `depth` parameter passed to serialize function tells serializer how deep you want to go throw the reference. This help us not only to avoid cyclical reference, but to determine what referenced objects should be serialized.

The same applies for lists:


```dart

    library example;

    import 'package:dson/dson.dart';
    
    @MirrorsUsed(targets:const['example'],override:'*')
    import 'dart:mirrors';
    
    @cyclical
    class Student {
      int id;
      String name;
      
      List<Course> courses;
    }
    
    @cyclical
    class Course {
      int id;
      
      DateTime beginDate;
      
      List<Student> students;
    }
    
    void main() {
    
      print(serialize(student1)); // will print: '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]}'
    
      print(serialize(student1, depth: ['courses']));
      /* will print:
          '{'
            '"id":1,'
            '"name":"student1",'
            '"courses":['
              '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
              '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
            ']'
          '}');
       */
    
      print(serialize(student1.courses)); 
      /* will print:
          '['
            '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
            '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
          ']');
      */
      
      print(serialize(student2.courses, depth: ['students']));
      /* will print: 
          '['
            '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":['
              '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]},'
              '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]}'
            ']},'
            '{"id":2,"beginDate":"2015-01-02T00:00:00.000Z","students":['
              '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]},'
              '{"id":3,"name":"student3","courses":[{"id":2},{"id":3}]}'
            ']}'
          ']'
       */
   }
```
    
Without the annotation `@cyclical` the program is going to throw a stack overflow error caused by the serializing of cyclical objects.

## Parsing json to dart object

```dart
library example;

import 'package:dson/dson.dart';

@MirrorsUsed(targets:const['example'],override:'*')
import 'dart:mirrors';

class EntityClass {
  String name;
  String _setted;
  
  @Property(name:"renamed")
  bool otherName;
  
  @ignore
  String notVisible;
  
  List<EntityClass> children;
  
  set setted(String s) => _setted = s;
  String get setted => _setted;
}

void main() {
  EntityClass object = parse('{"name":"test","renamed":"blub","notVisible":"it is", "setted": "awesome"}', EntityClass);
  
  print(object.name); // > test
  print(object.otherName); // > blub
  print(object.notVisible); // > it is
  print(object.setted); // > awesome
  
  // to parse a list of items use [parseList]
  List<EntityClass> list = parseList('[{"name":"test", "children": [{"name":"child1"},{"name":"child2"}]},{"name":"test2"}]', EntityClass);
  print(list.length); // > 2
  print(list[0].name); // > test
  print(list[0].children[0].name); // > child1
}
```

## Converting Maps and Lists<Map> to dart objects
Frameworks like Angular.dart come with several HTTP services which already transform the HTTP response to a map using JSON.encode. To use those encoded Maps or Lists use `map` and `mapList`.

```dart
library example;

import 'package:dson/dson.dart';

@MirrorsUsed(targets:const['example'],override:'*')
import 'dart:mirrors';

class EntityClass {
  String name;
  String _setted;
  
  @Property(name:"renamed")
  bool otherName;
  
  @ignore
  String notVisible;
  
  List<EntityClass> children;
  
  set setted(String s) => _setted = s;
  String get setted => _setted;
}

void main() {
  EntityClass object = map({"name":"test","renamed":"blub","notVisible":"it is", "setted": "awesome"}, EntityClass);  
  print(object.name); // > test
  print(object.otherName); // > blub
  print(object.notVisible); // > it is
  print(object.setted); // > awesome
  
  // to parse a list of items use [parseList]
  List<EntityClass> list = mapList([{"name":"test", "children": [{"name":"child1"},{"name":"child2"}]},{"name":"test2"}], EntityClass);
  print(list.length); // > 2
  print(list[0].name); // > test
  print(list[0].children[0].name); // > child1
}
```
