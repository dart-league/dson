// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.simple_test;

// **************************************************************************
// Generator: InitClassMirrorsGenerator
// Target: library serializer.simple_test
// **************************************************************************

_initClassMirrors() => initClassMirrors({
      JustObject: JustObjectClassMirror,
      TestGetter: TestGetterClassMirror,
      NestedClass: NestedClassClassMirror,
      SetClass: SetClassClassMirror,
      TestClass1: TestClass1ClassMirror,
      SimpleDateContainer: SimpleDateContainerClassMirror
    });

// **************************************************************************
// Generator: DsonGenerator
// Target: class JustObject
// **************************************************************************

abstract class _$JustObjectSerializable extends SerializableMap {
  get object;
  set object(v);

  operator [](String key) {
    switch (key) {
      case 'object':
        return object;
    }
    throwFieldNotFoundException(key, "JustObject");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'object':
        object = value;
        return;
    }
    throwFieldNotFoundException(key, "JustObject");
  }

  get keys => const ['object'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class TestGetter
// **************************************************************************

abstract class _$TestGetterSerializable extends SerializableMap {
  get _name;
  get name;
  set _name(v);

  operator [](String key) {
    switch (key) {
      case '_name':
        return _name;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(key, "TestGetter");
  }

  operator []=(String key, value) {
    switch (key) {
      case '_name':
        _name = value;
        return;
    }
    throwFieldNotFoundException(key, "TestGetter");
  }

  get keys => const ['_name', 'name'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class NestedClass
// **************************************************************************

abstract class _$NestedClassSerializable extends SerializableMap {
  get name;
  get list;
  get getter;
  set name(v);
  set list(v);
  set getter(v);

  operator [](String key) {
    switch (key) {
      case 'name':
        return name;
      case 'list':
        return list;
      case 'getter':
        return getter;
    }
    throwFieldNotFoundException(key, "NestedClass");
  }

  operator []=(String key, value) {
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
    throwFieldNotFoundException(key, "NestedClass");
  }

  get keys => const ['name', 'list', 'getter'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class SetClass
// **************************************************************************

abstract class _$SetClassSerializable extends SerializableMap {
  get names;
  set names(v);

  operator [](String key) {
    switch (key) {
      case 'names':
        return names;
    }
    throwFieldNotFoundException(key, "SetClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'names':
        names = value;
        return;
    }
    throwFieldNotFoundException(key, "SetClass");
  }

  get keys => const ['names'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class TestClass1
// **************************************************************************

abstract class _$TestClass1Serializable extends SerializableMap {
  get name;
  get matter;
  get number;
  get list;
  get map;
  get child;
  get intNumber;
  get ignored;
  get renamed;
  set name(v);
  set matter(v);
  set number(v);
  set list(v);
  set map(v);
  set child(v);
  set intNumber(v);
  set ignored(v);
  set renamed(v);

  operator [](String key) {
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
    throwFieldNotFoundException(key, "TestClass1");
  }

  operator []=(String key, value) {
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
    throwFieldNotFoundException(key, "TestClass1");
  }

  get keys => const [
        'name',
        'matter',
        'number',
        'list',
        'map',
        'child',
        'intNumber',
        'ignored',
        'renamed'
      ];
}

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
    type: String, annotations: const [const SerializedName('the_renamed')]);

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class SimpleDateContainer
// **************************************************************************

abstract class _$SimpleDateContainerSerializable extends SerializableMap {
  get testDate;
  set testDate(v);

  operator [](String key) {
    switch (key) {
      case 'testDate':
        return testDate;
    }
    throwFieldNotFoundException(key, "SimpleDateContainer");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'testDate':
        testDate = value;
        return;
    }
    throwFieldNotFoundException(key, "SimpleDateContainer");
  }

  get keys => const ['testDate'];
}

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
