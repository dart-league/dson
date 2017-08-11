// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.simple_test;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$JustObjectSerializable extends SerializableMap {
  Object get object;
  void set object(Object v);

  operator [](Object key) {
    switch (key) {
      case 'object':
        return object;
    }
    throwFieldNotFoundException(key, 'JustObject');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'object':
        object = value;
        return;
    }
    throwFieldNotFoundException(key, 'JustObject');
  }

  Iterable<String> get keys => JustObjectClassMirror.fields.keys;
}

abstract class _$TestGetterSerializable extends SerializableMap {
  String get _name;
  String get name;
  void set _name(String v);

  operator [](Object key) {
    switch (key) {
      case '_name':
        return _name;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(key, 'TestGetter');
  }

  operator []=(Object key, value) {
    switch (key) {
      case '_name':
        _name = value;
        return;
    }
    throwFieldNotFoundException(key, 'TestGetter');
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

  operator [](Object key) {
    switch (key) {
      case 'name':
        return name;
      case 'list':
        return list;
      case 'getter':
        return getter;
    }
    throwFieldNotFoundException(key, 'NestedClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'name':
        name = value;
        return;
      case 'list':
        list = value;
        return;
      case 'getter':
        getter = value;
        return;
    }
    throwFieldNotFoundException(key, 'NestedClass');
  }

  Iterable<String> get keys => NestedClassClassMirror.fields.keys;
}

abstract class _$SetClassSerializable extends SerializableMap {
  Set<dynamic> get names;
  void set names(Set<dynamic> v);

  operator [](Object key) {
    switch (key) {
      case 'names':
        return names;
    }
    throwFieldNotFoundException(key, 'SetClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'names':
        names = value;
        return;
    }
    throwFieldNotFoundException(key, 'SetClass');
  }

  Iterable<String> get keys => SetClassClassMirror.fields.keys;
}

abstract class _$TestClass1Serializable extends SerializableMap {
  String get name;
  bool get matter;
  num get number;
  List<dynamic> get list;
  Map<dynamic, dynamic> get map;
  TestClass1 get child;
  int get intNumber;
  bool get ignored;
  String get renamed;
  void set name(String v);
  void set matter(bool v);
  void set number(num v);
  void set list(List<dynamic> v);
  void set map(Map<dynamic, dynamic> v);
  void set child(TestClass1 v);
  void set intNumber(int v);
  void set ignored(bool v);
  void set renamed(String v);

  operator [](Object key) {
    switch (key) {
      case 'name':
        return name;
      case 'matter':
        return matter;
      case 'number':
        return number;
      case 'list':
        return list;
      case 'map':
        return map;
      case 'child':
        return child;
      case 'intNumber':
        return intNumber;
      case 'ignored':
        return ignored;
      case 'renamed':
        return renamed;
    }
    throwFieldNotFoundException(key, 'TestClass1');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'name':
        name = value;
        return;
      case 'matter':
        matter = value;
        return;
      case 'number':
        number = value;
        return;
      case 'list':
        list = value;
        return;
      case 'map':
        map = value;
        return;
      case 'child':
        child = value;
        return;
      case 'intNumber':
        intNumber = value;
        return;
      case 'ignored':
        ignored = value;
        return;
      case 'renamed':
        renamed = value;
        return;
    }
    throwFieldNotFoundException(key, 'TestClass1');
  }

  Iterable<String> get keys => TestClass1ClassMirror.fields.keys;
}

abstract class _$SimpleDateContainerSerializable extends SerializableMap {
  DateTime get testDate;
  void set testDate(DateTime v);

  operator [](Object key) {
    switch (key) {
      case 'testDate':
        return testDate;
    }
    throwFieldNotFoundException(key, 'SimpleDateContainer');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'testDate':
        testDate = value;
        return;
    }
    throwFieldNotFoundException(key, 'SimpleDateContainer');
  }

  Iterable<String> get keys => SimpleDateContainerClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_JustObject__Constructor(params) => new JustObject();

const $$JustObject_fields_object = const DeclarationMirror(type: Object);

const JustObjectClassMirror =
    const ClassMirror(name: 'JustObject', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _JustObject__Constructor)
}, fields: const {
  'object': $$JustObject_fields_object
}, getters: const [
  'object'
], setters: const [
  'object'
]);
_TestGetter__Constructor(params) => new TestGetter(params['_name']);

const $$TestGetter_fields__name = const DeclarationMirror(type: String);
const $$TestGetter_fields_name =
    const DeclarationMirror(type: String, isFinal: true);

const TestGetterClassMirror =
    const ClassMirror(name: 'TestGetter', constructors: const {
  '': const FunctionMirror(parameters: const {
    '_name': const DeclarationMirror(type: String, isOptional: true)
  }, call: _TestGetter__Constructor)
}, fields: const {
  '_name': $$TestGetter_fields__name,
  'name': $$TestGetter_fields_name
}, getters: const [
  '_name',
  'name'
], setters: const [
  '_name'
]);
_NestedClass__Constructor(params) =>
    new NestedClass(params['name'], params['list'], params['getter']);

const $$NestedClass_fields_name = const DeclarationMirror(type: String);
const $$NestedClass_fields_list =
    const DeclarationMirror(type: const [List, dynamic]);
const $$NestedClass_fields_getter = const DeclarationMirror(type: TestGetter);

const NestedClassClassMirror =
    const ClassMirror(name: 'NestedClass', constructors: const {
  '': const FunctionMirror(parameters: const {
    'name': const DeclarationMirror(type: String),
    'list': const DeclarationMirror(type: const [List, dynamic]),
    'getter': const DeclarationMirror(type: TestGetter)
  }, call: _NestedClass__Constructor)
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
_SetClass__Constructor(params) => new SetClass(params['names']);

const $$SetClass_fields_names =
    const DeclarationMirror(type: const [Set, dynamic]);

const SetClassClassMirror =
    const ClassMirror(name: 'SetClass', constructors: const {
  '': const FunctionMirror(parameters: const {
    'names': const DeclarationMirror(type: const [Set, dynamic])
  }, call: _SetClass__Constructor)
}, fields: const {
  'names': $$SetClass_fields_names
}, getters: const [
  'names'
], setters: const [
  'names'
]);
_TestClass1__Constructor(params) => new TestClass1();

const $$TestClass1_fields_name = const DeclarationMirror(type: String);
const $$TestClass1_fields_matter = const DeclarationMirror(type: bool);
const $$TestClass1_fields_number = const DeclarationMirror(type: num);
const $$TestClass1_fields_list =
    const DeclarationMirror(type: const [List, dynamic]);
const $$TestClass1_fields_map = const DeclarationMirror(type: const [
  Map,
  const [dynamic, dynamic]
]);
const $$TestClass1_fields_child = const DeclarationMirror(type: TestClass1);
const $$TestClass1_fields_intNumber = const DeclarationMirror(type: int);
const $$TestClass1_fields_ignored =
    const DeclarationMirror(type: bool, annotations: const [ignore]);
const $$TestClass1_fields_renamed = const DeclarationMirror(
    type: String, annotations: const [const SerializedName(r'the_renamed')]);

const TestClass1ClassMirror =
    const ClassMirror(name: 'TestClass1', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _TestClass1__Constructor)
}, fields: const {
  'name': $$TestClass1_fields_name,
  'matter': $$TestClass1_fields_matter,
  'number': $$TestClass1_fields_number,
  'list': $$TestClass1_fields_list,
  'map': $$TestClass1_fields_map,
  'child': $$TestClass1_fields_child,
  'intNumber': $$TestClass1_fields_intNumber,
  'ignored': $$TestClass1_fields_ignored,
  'renamed': $$TestClass1_fields_renamed
}, getters: const [
  'name',
  'matter',
  'number',
  'list',
  'map',
  'child',
  'intNumber',
  'ignored',
  'renamed'
], setters: const [
  'name',
  'matter',
  'number',
  'list',
  'map',
  'child',
  'intNumber',
  'ignored',
  'renamed'
]);
_SimpleDateContainer__Constructor(params) => new SimpleDateContainer();

const $$SimpleDateContainer_fields_testDate =
    const DeclarationMirror(type: DateTime);

const SimpleDateContainerClassMirror =
    const ClassMirror(name: 'SimpleDateContainer', constructors: const {
  '': const FunctionMirror(
      parameters: const {}, call: _SimpleDateContainer__Constructor)
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
  initFunctionMirrors({});
}
