// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deserializer_test.dart';

// **************************************************************************
// SerializableGenerator
// **************************************************************************

mixin _$SimpleDateContainerSerializable on SerializableMap {
  DateTime? get testDate;
  set testDate(DateTime? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'testDate':
        return testDate;
    }
    throwFieldNotFoundException(__key, 'SimpleDateContainer');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'testDate':
        testDate = fromSerializedDateTime(__value);
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleDateContainer');
  }

  Iterable<String> get keys =>
      SimpleDateContainerClassMirror.fields?.keys ?? [];
}

mixin _$TestClass1Serializable on SerializableMap {
  String? get name;
  bool? get matter;
  num? get number;
  List<dynamic>? get list;
  Map<dynamic, dynamic>? get myMap;
  TestClass1? get child;
  int? get intNumber;
  int? get intNumber2;
  double? get doubleNumber;
  double? get doubleNumber2;
  bool? get ignored;
  String? get renamed;
  set name(String? v);
  set matter(bool? v);
  set number(num? v);
  set list(List<dynamic>? v);
  set myMap(Map<dynamic, dynamic>? v);
  set child(TestClass1? v);
  set intNumber(int? v);
  set intNumber2(int? v);
  set doubleNumber(double? v);
  set doubleNumber2(double? v);
  set ignored(bool? v);
  set renamed(String? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'matter':
        return matter;
      case 'number':
        return number;
      case 'list':
        return list;
      case 'myMap':
        return myMap;
      case 'child':
        return child;
      case 'intNumber':
        return intNumber;
      case 'intNumber2':
        return intNumber2;
      case 'doubleNumber':
        return doubleNumber;
      case 'doubleNumber2':
        return doubleNumber2;
      case 'ignored':
        return ignored;
      case 'the_renamed':
        return renamed;
    }
    throwFieldNotFoundException(__key, 'TestClass1');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'name':
        name = __value;
        return;
      case 'matter':
        matter = __value;
        return;
      case 'number':
        number = __value;
        return;
      case 'list':
        list =
            fromSerialized(__value, () => List<dynamic>.empty(growable: true));
        return;
      case 'myMap':
        myMap = fromSerialized(__value, () => Map<dynamic, dynamic>());
        return;
      case 'child':
        child = fromSerialized(__value, () => TestClass1());
        return;
      case 'intNumber':
        intNumber = __value;
        return;
      case 'intNumber2':
        intNumber2 = __value;
        return;
      case 'doubleNumber':
        doubleNumber = __value;
        return;
      case 'doubleNumber2':
        doubleNumber2 = __value;
        return;
      case 'ignored':
        ignored = __value;
        return;
      case 'the_renamed':
        renamed = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'TestClass1');
  }

  Iterable<String> get keys => TestClass1ClassMirror.fields?.keys ?? [];
}

mixin _$JustObjectSerializable on SerializableMap {
  Object? get object;
  set object(Object? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'object':
        return object;
    }
    throwFieldNotFoundException(__key, 'JustObject');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'object':
        object = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'JustObject');
  }

  Iterable<String> get keys => JustObjectClassMirror.fields?.keys ?? [];
}

mixin _$SetClassSerializable on SerializableMap {
  Set<String>? get names;
  set names(Set<String>? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'names':
        return names;
    }
    throwFieldNotFoundException(__key, 'SetClass');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'names':
        names = fromSerialized(__value, () => Set<String>());
        return;
    }
    throwFieldNotFoundException(__key, 'SetClass');
  }

  Iterable<String> get keys => SetClassClassMirror.fields?.keys ?? [];
}

mixin _$TestGetterSerializable on SerializableMap {
  String get _name;
  String get name;
  set _name(String v);

  operator [](Object? __key) {
    switch (__key) {
      case '_name':
        return _name;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'TestGetter');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case '_name':
        _name = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'TestGetter');
  }

  Iterable<String> get keys => TestGetterClassMirror.fields?.keys ?? [];
}

mixin _$TestSetterSerializable on SerializableMap {
  String? get _name;
  String? get name;
  set _name(String? v);
  set name(String? v);

  operator [](Object? __key) {
    switch (__key) {
      case '_name':
        return _name;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'TestSetter');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case '_name':
        _name = __value;
        return;
      case 'name':
        name = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'TestSetter');
  }

  Iterable<String> get keys => TestSetterClassMirror.fields?.keys ?? [];
}

mixin _$NestedClassSerializable on SerializableMap {
  String? get name;
  List<dynamic>? get list;
  TestGetter? get getter;
  set name(String? v);
  set list(List<dynamic>? v);
  set getter(TestGetter? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'list':
        return list;
      case 'getter':
        return getter;
    }
    throwFieldNotFoundException(__key, 'NestedClass');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'name':
        name = __value;
        return;
      case 'list':
        list =
            fromSerialized(__value, () => List<dynamic>.empty(growable: true));
        return;
      case 'getter':
        getter = fromSerialized(__value, () => TestGetter());
        return;
    }
    throwFieldNotFoundException(__key, 'NestedClass');
  }

  Iterable<String> get keys => NestedClassClassMirror.fields?.keys ?? [];
}

mixin _$SimpleClassSerializable on SerializableMap {
  String? get name;
  set name(String? v);
  String toString();

  operator [](Object? __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'toString':
        return toString;
    }
    throwFieldNotFoundException(__key, 'SimpleClass');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'name':
        name = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleClass');
  }

  Iterable<String> get keys => SimpleClassClassMirror.fields?.keys ?? [];
}

mixin _$SimpleListSerializable on SerializableMap {
  List<dynamic>? get list;
  set list(List<dynamic>? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(__key, 'SimpleList');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'list':
        list =
            fromSerialized(__value, () => List<dynamic>.empty(growable: true));
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleList');
  }

  Iterable<String> get keys => SimpleListClassMirror.fields?.keys ?? [];
}

mixin _$SimpleMapSerializable on SerializableMap {
  Map<dynamic, dynamic>? get myMap;
  set myMap(Map<dynamic, dynamic>? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'myMap':
        return myMap;
    }
    throwFieldNotFoundException(__key, 'SimpleMap');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'myMap':
        myMap = fromSerialized(__value, () => Map<dynamic, dynamic>());
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleMap');
  }

  Iterable<String> get keys => SimpleMapClassMirror.fields?.keys ?? [];
}

mixin _$SimpleMapStringSerializable on SerializableMap {
  Map<String, num>? get myMap;
  set myMap(Map<String, num>? v);

  operator [](Object? __key) {
    switch (__key) {
      case 'myMap':
        return myMap;
    }
    throwFieldNotFoundException(__key, 'SimpleMapString');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'myMap':
        myMap = fromSerialized(__value, () => Map<String, num>());
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleMapString');
  }

  Iterable<String> get keys => SimpleMapStringClassMirror.fields?.keys ?? [];
}

mixin _$SimpleVarContainerSerializable on SerializableMap {
  dynamic get someVar;
  set someVar(dynamic v);

  operator [](Object? __key) {
    switch (__key) {
      case 'someVar':
        return someVar;
    }
    throwFieldNotFoundException(__key, 'SimpleVarContainer');
  }

  operator []=(Object? __key, __value) {
    switch (__key) {
      case 'someVar':
        someVar = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleVarContainer');
  }

  Iterable<String> get keys => SimpleVarContainerClassMirror.fields?.keys ?? [];
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_SimpleDateContainer__Constructor([positionalParams, namedParams]) =>
    SimpleDateContainer();

const $$SimpleDateContainer_fields_testDate =
    DeclarationMirror(name: 'testDate', type: DateTime);

const SimpleDateContainerClassMirror = ClassMirror(
    name: 'SimpleDateContainer',
    constructors: {
      '': FunctionMirror(name: '', $call: _SimpleDateContainer__Constructor)
    },
    fields: {'testDate': $$SimpleDateContainer_fields_testDate},
    getters: ['testDate'],
    setters: ['testDate'],
    superclass: SerializableMap);

_TestClass1__Constructor([positionalParams, namedParams]) => TestClass1();

const $$TestClass1_fields_name = DeclarationMirror(name: 'name', type: String);
const $$TestClass1_fields_matter =
    DeclarationMirror(name: 'matter', type: bool);
const $$TestClass1_fields_number = DeclarationMirror(name: 'number', type: num);
const $$TestClass1_fields_list =
    DeclarationMirror(name: 'list', type: [List, dynamic]);
const $$TestClass1_fields_myMap = DeclarationMirror(name: 'myMap', type: [
  Map,
  [dynamic, dynamic]
]);
const $$TestClass1_fields_child =
    DeclarationMirror(name: 'child', type: TestClass1);
const $$TestClass1_fields_intNumber =
    DeclarationMirror(name: 'intNumber', type: int);
const $$TestClass1_fields_intNumber2 =
    DeclarationMirror(name: 'intNumber2', type: int);
const $$TestClass1_fields_doubleNumber =
    DeclarationMirror(name: 'doubleNumber', type: double);
const $$TestClass1_fields_doubleNumber2 =
    DeclarationMirror(name: 'doubleNumber2', type: double);
const $$TestClass1_fields_ignored =
    DeclarationMirror(name: 'ignored', type: bool, annotations: [ignore]);
const $$TestClass1_fields_renamed = DeclarationMirror(
  name: 'the_renamed',
  type: String,
);

const TestClass1ClassMirror = ClassMirror(
    name: 'TestClass1',
    constructors: {
      '': FunctionMirror(name: '', $call: _TestClass1__Constructor)
    },
    fields: {
      'name': $$TestClass1_fields_name,
      'matter': $$TestClass1_fields_matter,
      'number': $$TestClass1_fields_number,
      'list': $$TestClass1_fields_list,
      'myMap': $$TestClass1_fields_myMap,
      'child': $$TestClass1_fields_child,
      'intNumber': $$TestClass1_fields_intNumber,
      'intNumber2': $$TestClass1_fields_intNumber2,
      'doubleNumber': $$TestClass1_fields_doubleNumber,
      'doubleNumber2': $$TestClass1_fields_doubleNumber2,
      'ignored': $$TestClass1_fields_ignored,
      'the_renamed': $$TestClass1_fields_renamed
    },
    getters: [
      'name',
      'matter',
      'number',
      'list',
      'myMap',
      'child',
      'intNumber',
      'intNumber2',
      'doubleNumber',
      'doubleNumber2',
      'ignored',
      'the_renamed'
    ],
    setters: [
      'name',
      'matter',
      'number',
      'list',
      'myMap',
      'child',
      'intNumber',
      'intNumber2',
      'doubleNumber',
      'doubleNumber2',
      'ignored',
      'the_renamed'
    ],
    superclass: SerializableMap);

_JustObject__Constructor([positionalParams, namedParams]) => JustObject();

const $$JustObject_fields_object =
    DeclarationMirror(name: 'object', type: Object);

const JustObjectClassMirror = ClassMirror(
    name: 'JustObject',
    constructors: {
      '': FunctionMirror(name: '', $call: _JustObject__Constructor)
    },
    fields: {'object': $$JustObject_fields_object},
    getters: ['object'],
    setters: ['object'],
    superclass: SerializableMap);

_SetClass__Constructor([positionalParams, namedParams]) => SetClass();

const $$SetClass_fields_names =
    DeclarationMirror(name: 'names', type: [Set, String]);

const SetClassClassMirror = ClassMirror(
    name: 'SetClass',
    constructors: {'': FunctionMirror(name: '', $call: _SetClass__Constructor)},
    fields: {'names': $$SetClass_fields_names},
    getters: ['names'],
    setters: ['names'],
    superclass: SerializableMap);

_TestGetter__Constructor([positionalParams, namedParams]) =>
    TestGetter(positionalParams[0] ?? '');

const $$TestGetter_fields__name =
    DeclarationMirror(name: '_name', type: String);
const $$TestGetter_fields_name = DeclarationMirror(name: 'name', type: String);

const TestGetterClassMirror = ClassMirror(
    name: 'TestGetter',
    constructors: {
      '': FunctionMirror(
          name: '',
          positionalParameters: [
            DeclarationMirror(name: '_name', type: String)
          ],
          $call: _TestGetter__Constructor)
    },
    fields: {
      '_name': $$TestGetter_fields__name,
      'name': $$TestGetter_fields_name
    },
    getters: ['_name', 'name'],
    setters: ['_name'],
    superclass: SerializableMap);

_TestSetter__Constructor([positionalParams, namedParams]) => TestSetter();

const $$TestSetter_fields__name =
    DeclarationMirror(name: '_name', type: String);
const $$TestSetter_fields_name = DeclarationMirror(name: 'name', type: String);

const TestSetterClassMirror = ClassMirror(
    name: 'TestSetter',
    constructors: {
      '': FunctionMirror(name: '', $call: _TestSetter__Constructor)
    },
    fields: {
      '_name': $$TestSetter_fields__name,
      'name': $$TestSetter_fields_name
    },
    getters: ['_name', 'name'],
    setters: ['_name', 'name'],
    superclass: SerializableMap);

_NestedClass__Constructor([positionalParams, namedParams]) =>
    NestedClass(positionalParams[0], positionalParams[1], positionalParams[2]);

const $$NestedClass_fields_name = DeclarationMirror(name: 'name', type: String);
const $$NestedClass_fields_list =
    DeclarationMirror(name: 'list', type: [List, dynamic]);
const $$NestedClass_fields_getter =
    DeclarationMirror(name: 'getter', type: TestGetter);

const NestedClassClassMirror = ClassMirror(
    name: 'NestedClass',
    constructors: {
      '': FunctionMirror(
          name: '',
          positionalParameters: [
            DeclarationMirror(name: 'name', type: String, isRequired: true),
            DeclarationMirror(
                name: 'list', type: [List, dynamic], isRequired: true),
            DeclarationMirror(
                name: 'getter', type: TestGetter, isRequired: true)
          ],
          $call: _NestedClass__Constructor)
    },
    fields: {
      'name': $$NestedClass_fields_name,
      'list': $$NestedClass_fields_list,
      'getter': $$NestedClass_fields_getter
    },
    getters: ['name', 'list', 'getter'],
    setters: ['name', 'list', 'getter'],
    superclass: SerializableMap);

_SimpleClass__Constructor([positionalParams, namedParams]) => SimpleClass();

const $$SimpleClass_fields_name = DeclarationMirror(name: 'name', type: String);

const SimpleClassClassMirror = ClassMirror(
    name: 'SimpleClass',
    constructors: {
      '': FunctionMirror(name: '', $call: _SimpleClass__Constructor)
    },
    fields: {'name': $$SimpleClass_fields_name},
    getters: ['name'],
    setters: ['name'],
    methods: {
      'toString': FunctionMirror(
        name: 'toString',
        returnType: String,
      )
    },
    superclass: SerializableMap);

_SimpleList__Constructor([positionalParams, namedParams]) => SimpleList();

const $$SimpleList_fields_list =
    DeclarationMirror(name: 'list', type: [List, dynamic]);

const SimpleListClassMirror = ClassMirror(
    name: 'SimpleList',
    constructors: {
      '': FunctionMirror(name: '', $call: _SimpleList__Constructor)
    },
    fields: {'list': $$SimpleList_fields_list},
    getters: ['list'],
    setters: ['list'],
    superclass: SerializableMap);

_SimpleMap__Constructor([positionalParams, namedParams]) => SimpleMap();

const $$SimpleMap_fields_myMap = DeclarationMirror(name: 'myMap', type: [
  Map,
  [dynamic, dynamic]
]);

const SimpleMapClassMirror = ClassMirror(
    name: 'SimpleMap',
    constructors: {
      '': FunctionMirror(name: '', $call: _SimpleMap__Constructor)
    },
    fields: {'myMap': $$SimpleMap_fields_myMap},
    getters: ['myMap'],
    setters: ['myMap'],
    superclass: SerializableMap);

_SimpleMapString__Constructor([positionalParams, namedParams]) =>
    SimpleMapString();

const $$SimpleMapString_fields_myMap = DeclarationMirror(name: 'myMap', type: [
  Map,
  [String, num]
]);

const SimpleMapStringClassMirror = ClassMirror(
    name: 'SimpleMapString',
    constructors: {
      '': FunctionMirror(name: '', $call: _SimpleMapString__Constructor)
    },
    fields: {'myMap': $$SimpleMapString_fields_myMap},
    getters: ['myMap'],
    setters: ['myMap'],
    superclass: SerializableMap);

_SimpleVarContainer__Constructor([positionalParams, namedParams]) =>
    SimpleVarContainer();

const $$SimpleVarContainer_fields_someVar =
    DeclarationMirror(name: 'someVar', type: dynamic);

const SimpleVarContainerClassMirror = ClassMirror(
    name: 'SimpleVarContainer',
    constructors: {
      '': FunctionMirror(name: '', $call: _SimpleVarContainer__Constructor)
    },
    fields: {'someVar': $$SimpleVarContainer_fields_someVar},
    getters: ['someVar'],
    setters: ['someVar'],
    superclass: SerializableMap);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    SimpleDateContainer: SimpleDateContainerClassMirror,
    TestClass1: TestClass1ClassMirror,
    JustObject: JustObjectClassMirror,
    SetClass: SetClassClassMirror,
    TestGetter: TestGetterClassMirror,
    TestSetter: TestSetterClassMirror,
    NestedClass: NestedClassClassMirror,
    SimpleClass: SimpleClassClassMirror,
    SimpleList: SimpleListClassMirror,
    SimpleMap: SimpleMapClassMirror,
    SimpleMapString: SimpleMapStringClassMirror,
    SimpleVarContainer: SimpleVarContainerClassMirror
  });
}
