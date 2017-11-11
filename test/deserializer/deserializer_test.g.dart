// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserializer_test;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

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
      case 'map':
        map = __value;
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

abstract class _$SetClassSerializable extends SerializableMap {
  Set<String> get names;
  void set names(Set<String> v);

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

abstract class _$TestSetterSerializable extends SerializableMap {
  String get _name;
  String get name;
  void set _name(String v);
  void set name(String v);

  operator [](Object __key) {
    switch (__key) {
      case '_name':
        return _name;
      case 'name':
        return name;
    }
    throwFieldNotFoundException(__key, 'TestSetter');
  }

  operator []=(Object __key, __value) {
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

  Iterable<String> get keys => TestSetterClassMirror.fields.keys;
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

abstract class _$SimpleClassSerializable extends SerializableMap {
  String get name;
  void set name(String v);
  String toString();

  operator [](Object __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'toString':
        return toString;
    }
    throwFieldNotFoundException(__key, 'SimpleClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'name':
        name = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleClass');
  }

  Iterable<String> get keys => SimpleClassClassMirror.fields.keys;
}

abstract class _$SimpleListSerializable extends SerializableMap {
  List<dynamic> get list;
  void set list(List<dynamic> v);

  operator [](Object __key) {
    switch (__key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(__key, 'SimpleList');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'list':
        list = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleList');
  }

  Iterable<String> get keys => SimpleListClassMirror.fields.keys;
}

abstract class _$SimpleMapSerializable extends SerializableMap {
  Map<dynamic, dynamic> get map;
  void set map(Map<dynamic, dynamic> v);

  operator [](Object __key) {
    switch (__key) {
      case 'map':
        return map;
    }
    throwFieldNotFoundException(__key, 'SimpleMap');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'map':
        map = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleMap');
  }

  Iterable<String> get keys => SimpleMapClassMirror.fields.keys;
}

abstract class _$SimpleMapStringSerializable extends SerializableMap {
  Map<String, num> get map;
  void set map(Map<String, num> v);

  operator [](Object __key) {
    switch (__key) {
      case 'map':
        return map;
    }
    throwFieldNotFoundException(__key, 'SimpleMapString');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'map':
        map = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleMapString');
  }

  Iterable<String> get keys => SimpleMapStringClassMirror.fields.keys;
}

abstract class _$SimpleVarContainerSerializable extends SerializableMap {
  dynamic get someVar;
  void set someVar(dynamic v);

  operator [](Object __key) {
    switch (__key) {
      case 'someVar':
        return someVar;
    }
    throwFieldNotFoundException(__key, 'SimpleVarContainer');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'someVar':
        someVar = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'SimpleVarContainer');
  }

  Iterable<String> get keys => SimpleVarContainerClassMirror.fields.keys;
}

abstract class _$RealWorldClassSerializable extends SerializableMap {
  String get name;
  int get age;
  num get radius;
  List<String> get pimps;
  dynamic get diameter;
  void set name(String v);
  void set age(int v);
  void set radius(num v);
  void set pimps(List<String> v);
  void set diameter(num v);

  operator [](Object __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'age':
        return age;
      case 'radius':
        return radius;
      case 'pimps':
        return pimps;
      case 'diameter':
        return diameter;
    }
    throwFieldNotFoundException(__key, 'RealWorldClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'name':
        name = __value;
        return;
      case 'age':
        age = __value;
        return;
      case 'radius':
        radius = __value;
        return;
      case 'pimps':
        pimps = __value;
        return;
      case 'diameter':
        diameter = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'RealWorldClass');
  }

  Iterable<String> get keys => RealWorldClassClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_SimpleDateContainer__Constructor([positionalParams, namedParams]) =>
    new SimpleDateContainer();

const $$SimpleDateContainer_fields_testDate =
    const DeclarationMirror(type: DateTime);

const SimpleDateContainerClassMirror = const ClassMirror(
    name: 'SimpleDateContainer',
    constructors: const {
      '': const FunctionMirror($call: _SimpleDateContainer__Constructor)
    },
    fields: const {
      'testDate': $$SimpleDateContainer_fields_testDate
    },
    getters: const [
      'testDate'
    ],
    setters: const [
      'testDate'
    ]);
_TestClass1__Constructor([positionalParams, namedParams]) => new TestClass1();

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
  '': const FunctionMirror($call: _TestClass1__Constructor)
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
_JustObject__Constructor([positionalParams, namedParams]) => new JustObject();

const $$JustObject_fields_object = const DeclarationMirror(type: Object);

const JustObjectClassMirror = const ClassMirror(
    name: 'JustObject',
    constructors: const {
      '': const FunctionMirror($call: _JustObject__Constructor)
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
_SetClass__Constructor([positionalParams, namedParams]) => new SetClass();

const $$SetClass_fields_names =
    const DeclarationMirror(type: const [Set, String]);

const SetClassClassMirror = const ClassMirror(
    name: 'SetClass',
    constructors: const {
      '': const FunctionMirror($call: _SetClass__Constructor)
    },
    fields: const {
      'names': $$SetClass_fields_names
    },
    getters: const [
      'names'
    ],
    setters: const [
      'names'
    ]);
_TestGetter__Constructor([positionalParams, namedParams]) =>
    new TestGetter(positionalParams[0]);

const $$TestGetter_fields__name = const DeclarationMirror(type: String);
const $$TestGetter_fields_name =
    const DeclarationMirror(type: String, isFinal: true);

const TestGetterClassMirror =
    const ClassMirror(name: 'TestGetter', constructors: const {
  '': const FunctionMirror(positionalParameters: const [
    const DeclarationMirror(name: '_name', type: String)
  ], $call: _TestGetter__Constructor)
}, fields: const {
  '_name': $$TestGetter_fields__name,
  'name': $$TestGetter_fields_name
}, getters: const [
  '_name',
  'name'
], setters: const [
  '_name'
]);
_TestSetter__Constructor([positionalParams, namedParams]) => new TestSetter();

const $$TestSetter_fields__name = const DeclarationMirror(type: String);
const $$TestSetter_fields_name = const DeclarationMirror(type: String);

const TestSetterClassMirror = const ClassMirror(
    name: 'TestSetter',
    constructors: const {
      '': const FunctionMirror($call: _TestSetter__Constructor)
    },
    fields: const {
      '_name': $$TestSetter_fields__name,
      'name': $$TestSetter_fields_name
    },
    getters: const [
      '_name',
      'name'
    ],
    setters: const [
      '_name',
      'name'
    ]);
_NestedClass__Constructor([positionalParams, namedParams]) => new NestedClass(
    positionalParams[0], positionalParams[1], positionalParams[2]);

const $$NestedClass_fields_name = const DeclarationMirror(type: String);
const $$NestedClass_fields_list =
    const DeclarationMirror(type: const [List, dynamic]);
const $$NestedClass_fields_getter = const DeclarationMirror(type: TestGetter);

const NestedClassClassMirror =
    const ClassMirror(name: 'NestedClass', constructors: const {
  '': const FunctionMirror(positionalParameters: const [
    const DeclarationMirror(name: 'name', type: String, isRequired: true),
    const DeclarationMirror(
        name: 'list', type: const [List, dynamic], isRequired: true),
    const DeclarationMirror(name: 'getter', type: TestGetter, isRequired: true)
  ], $call: _NestedClass__Constructor)
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
_SimpleClass__Constructor([positionalParams, namedParams]) => new SimpleClass();

const $$SimpleClass_fields_name = const DeclarationMirror(type: String);

const SimpleClassClassMirror =
    const ClassMirror(name: 'SimpleClass', constructors: const {
  '': const FunctionMirror($call: _SimpleClass__Constructor)
}, fields: const {
  'name': $$SimpleClass_fields_name
}, getters: const [
  'name'
], setters: const [
  'name'
], methods: const {
  'toString': const FunctionMirror(
    name: 'toString',
    returnType: String,
  )
});
_SimpleList__Constructor([positionalParams, namedParams]) => new SimpleList();

const $$SimpleList_fields_list =
    const DeclarationMirror(type: const [List, dynamic]);

const SimpleListClassMirror = const ClassMirror(
    name: 'SimpleList',
    constructors: const {
      '': const FunctionMirror($call: _SimpleList__Constructor)
    },
    fields: const {
      'list': $$SimpleList_fields_list
    },
    getters: const [
      'list'
    ],
    setters: const [
      'list'
    ]);
_SimpleMap__Constructor([positionalParams, namedParams]) => new SimpleMap();

const $$SimpleMap_fields_map = const DeclarationMirror(type: const [
  Map,
  const [dynamic, dynamic]
]);

const SimpleMapClassMirror = const ClassMirror(
    name: 'SimpleMap',
    constructors: const {
      '': const FunctionMirror($call: _SimpleMap__Constructor)
    },
    fields: const {
      'map': $$SimpleMap_fields_map
    },
    getters: const [
      'map'
    ],
    setters: const [
      'map'
    ]);
_SimpleMapString__Constructor([positionalParams, namedParams]) =>
    new SimpleMapString();

const $$SimpleMapString_fields_map = const DeclarationMirror(type: const [
  Map,
  const [String, num]
]);

const SimpleMapStringClassMirror = const ClassMirror(
    name: 'SimpleMapString',
    constructors: const {
      '': const FunctionMirror($call: _SimpleMapString__Constructor)
    },
    fields: const {
      'map': $$SimpleMapString_fields_map
    },
    getters: const [
      'map'
    ],
    setters: const [
      'map'
    ]);
_SimpleVarContainer__Constructor([positionalParams, namedParams]) =>
    new SimpleVarContainer();

const $$SimpleVarContainer_fields_someVar =
    const DeclarationMirror(type: dynamic);

const SimpleVarContainerClassMirror = const ClassMirror(
    name: 'SimpleVarContainer',
    constructors: const {
      '': const FunctionMirror($call: _SimpleVarContainer__Constructor)
    },
    fields: const {
      'someVar': $$SimpleVarContainer_fields_someVar
    },
    getters: const [
      'someVar'
    ],
    setters: const [
      'someVar'
    ]);
_RealWorldClass__Constructor([positionalParams, namedParams]) =>
    new RealWorldClass(positionalParams[0], positionalParams[1],
        radius: namedParams['radius'], pimps: namedParams['pimps']);

const $$RealWorldClass_fields_name = const DeclarationMirror(type: String);
const $$RealWorldClass_fields_age = const DeclarationMirror(type: int);
const $$RealWorldClass_fields_radius = const DeclarationMirror(type: num);
const $$RealWorldClass_fields_pimps =
    const DeclarationMirror(type: const [List, String]);
const $$RealWorldClass_fields_diameter = const DeclarationMirror(type: dynamic);

const RealWorldClassClassMirror =
    const ClassMirror(name: 'RealWorldClass', constructors: const {
  '': const FunctionMirror(positionalParameters: const [
    const DeclarationMirror(name: 'name', type: String, isRequired: true),
    const DeclarationMirror(name: 'age', type: int, isRequired: true)
  ], namedParameters: const {
    'radius': const DeclarationMirror(name: 'radius', type: num, isNamed: true),
    'pimps': const DeclarationMirror(
        name: 'pimps', type: const [List, String], isNamed: true)
  }, $call: _RealWorldClass__Constructor)
}, fields: const {
  'name': $$RealWorldClass_fields_name,
  'age': $$RealWorldClass_fields_age,
  'radius': $$RealWorldClass_fields_radius,
  'pimps': $$RealWorldClass_fields_pimps,
  'diameter': $$RealWorldClass_fields_diameter
}, getters: const [
  'name',
  'age',
  'radius',
  'pimps',
  'diameter'
], setters: const [
  'name',
  'age',
  'radius',
  'pimps',
  'diameter'
]);

// **************************************************************************
// Generator: InitMirrorsGenerator
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
    SimpleVarContainer: SimpleVarContainerClassMirror,
    RealWorldClass: RealWorldClassClassMirror
  });
  initFunctionMirrors({});
}
