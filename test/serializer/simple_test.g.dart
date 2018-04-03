// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.simple_test;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$JustObjectSerializable extends SerializableMap {
  Object get object;
  void set object(Object v);

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
  void set _name(String v);

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
  void set name(String v);
  void set list(List<dynamic> v);
  void set getter(TestGetter v);

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
        list = __value;
        return;
      case 'getter':
        getter = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'NestedClass');
  }

  Iterable<String> get keys => NestedClassClassMirror.fields.keys;
}

abstract class _$SetClassSerializable extends SerializableMap {
  Set<dynamic> get names;
  void set names(Set<dynamic> v);

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
        names = __value;
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
  void set name(String v);
  void set matter(bool v);
  void set number(num v);
  void set list(List<dynamic> v);
  void set myMap(Map<dynamic, dynamic> v);
  void set child(TestClass1 v);
  void set intNumber(int v);
  void set ignored(bool v);
  void set renamed(String v);

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
      case 'renamed':
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
        list = __value;
        return;
      case 'myMap':
        myMap = __value;
        return;
      case 'child':
        child = __value;
        return;
      case 'intNumber':
        intNumber = __value;
        return;
      case 'ignored':
        ignored = __value;
        return;
      case 'renamed':
        renamed = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'TestClass1');
  }

  Iterable<String> get keys => TestClass1ClassMirror.fields.keys;
}

abstract class _$SimpleDateContainerSerializable extends SerializableMap {
  DateTime get testDate;
  void set testDate(DateTime v);

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
        testDate = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleDateContainer');
  }

  Iterable<String> get keys => SimpleDateContainerClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_JustObject__Constructor([positionalParams, namedParams]) => new JustObject();

const $$JustObject_fields_object =
    const DeclarationMirror(name: 'object', type: Object);

const JustObjectClassMirror = const ClassMirror(
    name: 'JustObject',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _JustObject__Constructor)
    },
    fields: const {
      'object': $$JustObject_fields_object
    },
    getters: const [
      'object'
    ],
    setters: const [
      'object'
    ]);
_TestGetter__Constructor([positionalParams, namedParams]) =>
    new TestGetter(positionalParams[0]);

const $$TestGetter_fields__name =
    const DeclarationMirror(name: '_name', type: String);
const $$TestGetter_fields_name =
    const DeclarationMirror(name: 'name', type: String, isFinal: true);

const TestGetterClassMirror =
    const ClassMirror(name: 'TestGetter', constructors: const {
  '': const FunctionMirror(
      name: '',
      positionalParameters: const [
        const DeclarationMirror(name: '_name', type: String)
      ],
      $call: _TestGetter__Constructor)
}, fields: const {
  '_name': $$TestGetter_fields__name,
  'name': $$TestGetter_fields_name
}, getters: const [
  '_name',
  'name'
], setters: const [
  '_name'
]);
_NestedClass__Constructor([positionalParams, namedParams]) => new NestedClass(
    positionalParams[0], positionalParams[1], positionalParams[2]);

const $$NestedClass_fields_name =
    const DeclarationMirror(name: 'name', type: String);
const $$NestedClass_fields_list =
    const DeclarationMirror(name: 'list', type: const [List, dynamic]);
const $$NestedClass_fields_getter =
    const DeclarationMirror(name: 'getter', type: TestGetter);

const NestedClassClassMirror =
    const ClassMirror(name: 'NestedClass', constructors: const {
  '': const FunctionMirror(
      name: '',
      positionalParameters: const [
        const DeclarationMirror(name: 'name', type: String, isRequired: true),
        const DeclarationMirror(
            name: 'list', type: const [List, dynamic], isRequired: true),
        const DeclarationMirror(
            name: 'getter', type: TestGetter, isRequired: true)
      ],
      $call: _NestedClass__Constructor)
}, fields: const {
  'name': $$NestedClass_fields_name,
  'list': $$NestedClass_fields_list,
  'getter': $$NestedClass_fields_getter
}, getters: const [
  'name',
  'list',
  'getter'
], setters: const [
  'name',
  'list',
  'getter'
]);
_SetClass__Constructor([positionalParams, namedParams]) =>
    new SetClass(positionalParams[0]);

const $$SetClass_fields_names =
    const DeclarationMirror(name: 'names', type: const [Set, dynamic]);

const SetClassClassMirror =
    const ClassMirror(name: 'SetClass', constructors: const {
  '': const FunctionMirror(
      name: '',
      positionalParameters: const [
        const DeclarationMirror(
            name: 'names', type: const [Set, dynamic], isRequired: true)
      ],
      $call: _SetClass__Constructor)
}, fields: const {
  'names': $$SetClass_fields_names
}, getters: const [
  'names'
], setters: const [
  'names'
]);
_TestClass1__Constructor([positionalParams, namedParams]) => new TestClass1();

const $$TestClass1_fields_name =
    const DeclarationMirror(name: 'name', type: String);
const $$TestClass1_fields_matter =
    const DeclarationMirror(name: 'matter', type: bool);
const $$TestClass1_fields_number =
    const DeclarationMirror(name: 'number', type: num);
const $$TestClass1_fields_list =
    const DeclarationMirror(name: 'list', type: const [List, dynamic]);
const $$TestClass1_fields_myMap =
    const DeclarationMirror(name: 'myMap', type: const [
  Map,
  const [dynamic, dynamic]
]);
const $$TestClass1_fields_child =
    const DeclarationMirror(name: 'child', type: TestClass1);
const $$TestClass1_fields_intNumber =
    const DeclarationMirror(name: 'intNumber', type: int);
const $$TestClass1_fields_ignored = const DeclarationMirror(
    name: 'ignored', type: bool, annotations: const [ignore]);
const $$TestClass1_fields_renamed = const DeclarationMirror(
    name: 'renamed',
    type: String,
    annotations: const [const SerializedName(r'the_renamed')]);

const TestClass1ClassMirror =
    const ClassMirror(name: 'TestClass1', constructors: const {
  '': const FunctionMirror(name: '', $call: _TestClass1__Constructor)
}, fields: const {
  'name': $$TestClass1_fields_name,
  'matter': $$TestClass1_fields_matter,
  'number': $$TestClass1_fields_number,
  'list': $$TestClass1_fields_list,
  'myMap': $$TestClass1_fields_myMap,
  'child': $$TestClass1_fields_child,
  'intNumber': $$TestClass1_fields_intNumber,
  'ignored': $$TestClass1_fields_ignored,
  'renamed': $$TestClass1_fields_renamed
}, getters: const [
  'name',
  'matter',
  'number',
  'list',
  'myMap',
  'child',
  'intNumber',
  'ignored',
  'renamed'
], setters: const [
  'name',
  'matter',
  'number',
  'list',
  'myMap',
  'child',
  'intNumber',
  'ignored',
  'renamed'
]);
_SimpleDateContainer__Constructor([positionalParams, namedParams]) =>
    new SimpleDateContainer();

const $$SimpleDateContainer_fields_testDate =
    const DeclarationMirror(name: 'testDate', type: DateTime);

const SimpleDateContainerClassMirror =
    const ClassMirror(name: 'SimpleDateContainer', constructors: const {
  '': const FunctionMirror(name: '', $call: _SimpleDateContainer__Constructor)
}, fields: const {
  'testDate': $$SimpleDateContainer_fields_testDate
}, getters: const [
  'testDate'
], setters: const [
  'testDate'
]);

// **************************************************************************
// Generator: InitMirrorsGenerator
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
