// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.simple_test;

// **************************************************************************
// SerializableGenerator
// **************************************************************************

abstract class _$JustObjectSerializable extends SerializableMap {
  Object get object;
  set object(Object v);

  operator [](Object __key) {
    switch (__key) {
      case 'object':
        return object;
    }
    throwFieldNotFoundException(__key, 'JustObject');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'object':
        object = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'JustObject');
  }

  Iterable<String> get keys => JustObjectClassMirror.fields.keys;
}

abstract class _$TestGetterSerializable extends SerializableMap {
  String get _name;
  String get name;
  set _name(String v);

  operator [](Object __key) {
    switch (__key) {
      case '_name':
        return _name;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'TestGetter');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case '_name':
        _name = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'TestGetter');
  }

  Iterable<String> get keys => TestGetterClassMirror.fields.keys;
}

abstract class _$NestedClassSerializable extends SerializableMap {
  String get name;
  List<dynamic> get list;
  TestGetter get getter;
  set name(String v);
  set list(List<dynamic> v);
  set getter(TestGetter v);

  operator [](Object __key) {
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

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'name':
        name = __value;
        return;
      case 'list':
        list = fromSerialized(__value, () => List<dynamic>());
        return;
      case 'getter':
        getter = fromSerialized(__value, () => TestGetter());
        return;
    }
    throwFieldNotFoundException(__key, 'NestedClass');
  }

  Iterable<String> get keys => NestedClassClassMirror.fields.keys;
}

abstract class _$SetClassSerializable extends SerializableMap {
  Set<dynamic> get names;
  set names(Set<dynamic> v);

  operator [](Object __key) {
    switch (__key) {
      case 'names':
        return names;
    }
    throwFieldNotFoundException(__key, 'SetClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'names':
        names = fromSerialized(__value, () => Set<dynamic>());
        return;
    }
    throwFieldNotFoundException(__key, 'SetClass');
  }

  Iterable<String> get keys => SetClassClassMirror.fields.keys;
}

abstract class _$TestClass1Serializable extends SerializableMap {
  String get name;
  bool get matter;
  num get number;
  List<dynamic> get list;
  Map<dynamic, dynamic> get myMap;
  TestClass1 get child;
  int get intNumber;
  bool get ignored;
  String get renamed;
  set name(String v);
  set matter(bool v);
  set number(num v);
  set list(List<dynamic> v);
  set myMap(Map<dynamic, dynamic> v);
  set child(TestClass1 v);
  set intNumber(int v);
  set ignored(bool v);
  set renamed(String v);

  operator [](Object __key) {
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
      case 'ignored':
        return ignored;
      case 'the_renamed':
        return renamed;
    }
    throwFieldNotFoundException(__key, 'TestClass1');
  }

  operator []=(Object __key, __value) {
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
        list = fromSerialized(__value, () => List<dynamic>());
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
      case 'ignored':
        ignored = __value;
        return;
      case 'the_renamed':
        renamed = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'TestClass1');
  }

  Iterable<String> get keys => TestClass1ClassMirror.fields.keys;
}

abstract class _$SimpleDateContainerSerializable extends SerializableMap {
  DateTime get testDate;
  set testDate(DateTime v);

  operator [](Object __key) {
    switch (__key) {
      case 'testDate':
        return testDate;
    }
    throwFieldNotFoundException(__key, 'SimpleDateContainer');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'testDate':
        testDate = fromSerializedDateTime(__value);
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleDateContainer');
  }

  Iterable<String> get keys => SimpleDateContainerClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_JustObject__Constructor([positionalParams, namedParams]) => JustObject();

const $$JustObject_fields_object =
    DeclarationMirror(name: 'object', type: Object);

const JustObjectClassMirror = ClassMirror(name: 'JustObject', constructors: {
  '': FunctionMirror(name: '', $call: _JustObject__Constructor)
}, fields: {
  'object': $$JustObject_fields_object
}, getters: [
  'object'
], setters: [
  'object'
]);

_TestGetter__Constructor([positionalParams, namedParams]) =>
    TestGetter(positionalParams[0]);

const $$TestGetter_fields__name =
    DeclarationMirror(name: '_name', type: String);
const $$TestGetter_fields_name =
    DeclarationMirror(name: 'name', type: String, isFinal: true);

const TestGetterClassMirror = ClassMirror(name: 'TestGetter', constructors: {
  '': FunctionMirror(
      name: '',
      positionalParameters: [DeclarationMirror(name: '_name', type: String)],
      $call: _TestGetter__Constructor)
}, fields: {
  '_name': $$TestGetter_fields__name,
  'name': $$TestGetter_fields_name
}, getters: [
  '_name',
  'name'
], setters: [
  '_name'
]);

_NestedClass__Constructor([positionalParams, namedParams]) =>
    NestedClass(positionalParams[0], positionalParams[1], positionalParams[2]);

const $$NestedClass_fields_name = DeclarationMirror(name: 'name', type: String);
const $$NestedClass_fields_list =
    DeclarationMirror(name: 'list', type: [List, dynamic]);
const $$NestedClass_fields_getter =
    DeclarationMirror(name: 'getter', type: TestGetter);

const NestedClassClassMirror = ClassMirror(name: 'NestedClass', constructors: {
  '': FunctionMirror(
      name: '',
      positionalParameters: [
        DeclarationMirror(name: 'name', type: String, isRequired: true),
        DeclarationMirror(
            name: 'list', type: [List, dynamic], isRequired: true),
        DeclarationMirror(name: 'getter', type: TestGetter, isRequired: true)
      ],
      $call: _NestedClass__Constructor)
}, fields: {
  'name': $$NestedClass_fields_name,
  'list': $$NestedClass_fields_list,
  'getter': $$NestedClass_fields_getter
}, getters: [
  'name',
  'list',
  'getter'
], setters: [
  'name',
  'list',
  'getter'
]);

_SetClass__Constructor([positionalParams, namedParams]) =>
    SetClass(positionalParams[0]);

const $$SetClass_fields_names =
    DeclarationMirror(name: 'names', type: [Set, dynamic]);

const SetClassClassMirror = ClassMirror(name: 'SetClass', constructors: {
  '': FunctionMirror(
      name: '',
      positionalParameters: [
        DeclarationMirror(name: 'names', type: [Set, dynamic], isRequired: true)
      ],
      $call: _SetClass__Constructor)
}, fields: {
  'names': $$SetClass_fields_names
}, getters: [
  'names'
], setters: [
  'names'
]);

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
const $$TestClass1_fields_ignored =
    DeclarationMirror(name: 'ignored', type: bool, annotations: [ignore]);
const $$TestClass1_fields_renamed = DeclarationMirror(
  name: 'the_renamed',
  type: String,
);

const TestClass1ClassMirror = ClassMirror(name: 'TestClass1', constructors: {
  '': FunctionMirror(name: '', $call: _TestClass1__Constructor)
}, fields: {
  'name': $$TestClass1_fields_name,
  'matter': $$TestClass1_fields_matter,
  'number': $$TestClass1_fields_number,
  'list': $$TestClass1_fields_list,
  'myMap': $$TestClass1_fields_myMap,
  'child': $$TestClass1_fields_child,
  'intNumber': $$TestClass1_fields_intNumber,
  'ignored': $$TestClass1_fields_ignored,
  'the_renamed': $$TestClass1_fields_renamed
}, getters: [
  'name',
  'matter',
  'number',
  'list',
  'myMap',
  'child',
  'intNumber',
  'ignored',
  'the_renamed'
], setters: [
  'name',
  'matter',
  'number',
  'list',
  'myMap',
  'child',
  'intNumber',
  'ignored',
  'the_renamed'
]);

_SimpleDateContainer__Constructor([positionalParams, namedParams]) =>
    SimpleDateContainer();

const $$SimpleDateContainer_fields_testDate =
    DeclarationMirror(name: 'testDate', type: DateTime);

const SimpleDateContainerClassMirror = ClassMirror(
    name: 'SimpleDateContainer',
    constructors: {
      '': FunctionMirror(name: '', $call: _SimpleDateContainer__Constructor)
    },
    fields: {
      'testDate': $$SimpleDateContainer_fields_testDate
    },
    getters: [
      'testDate'
    ],
    setters: [
      'testDate'
    ]);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    JustObject: JustObjectClassMirror,
    TestGetter: TestGetterClassMirror,
    NestedClass: NestedClassClassMirror,
    SetClass: SetClassClassMirror,
    TestClass1: TestClass1ClassMirror,
    SimpleDateContainer: SimpleDateContainerClassMirror
  });
}
