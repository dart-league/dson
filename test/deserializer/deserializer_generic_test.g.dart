// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_generic_test;

// **************************************************************************
// SerializableGenerator
// **************************************************************************

abstract class _$SimpleClassSerializable extends SerializableMap {
  String get name;
  set name(String v);
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

abstract class _$ListClassSerializable extends SerializableMap {
  List<SimpleClass> get list;
  set list(List<SimpleClass> v);

  operator [](Object __key) {
    switch (__key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(__key, 'ListClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'list':
        list = fromSerialized(
            __value, [() => List<SimpleClass>(), () => SimpleClass()]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListClass');
  }

  Iterable<String> get keys => ListClassClassMirror.fields.keys;
}

abstract class _$ListTClassSerializable<T> extends SerializableMap {
  List<T> get listT;
  set listT(List<T> v);

  operator [](Object __key) {
    switch (__key) {
      case 'listT':
        return listT;
    }
    throwFieldNotFoundException(__key, 'ListTClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'listT':
        listT = fromSerialized(__value, () => List<T>());
        return;
    }
    throwFieldNotFoundException(__key, 'ListTClass');
  }

  Iterable<String> get keys => ListTClassClassMirror.fields.keys;
}

abstract class _$GenericTClassSerializable<T> extends SerializableMap {
  T get t;
  set t(T v);

  operator [](Object __key) {
    switch (__key) {
      case 't':
        return t;
    }
    throwFieldNotFoundException(__key, 'GenericTClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 't':
        t = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'GenericTClass');
  }

  Iterable<String> get keys => GenericTClassClassMirror.fields.keys;
}

abstract class _$GenericT1T2ClassSerializable<T1, T2> extends SerializableMap {
  T1 get t1;
  T2 get t2;
  set t1(T1 v);
  set t2(T2 v);

  operator [](Object __key) {
    switch (__key) {
      case 't1':
        return t1;
      case 't2':
        return t2;
    }
    throwFieldNotFoundException(__key, 'GenericT1T2Class');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 't1':
        t1 = __value;
        return;
      case 't2':
        t2 = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'GenericT1T2Class');
  }

  Iterable<String> get keys => GenericT1T2ClassClassMirror.fields.keys;
}

abstract class _$ListListClassSerializable extends SerializableMap {
  List<List<SimpleClass>> get list;
  set list(List<List<SimpleClass>> v);

  operator [](Object __key) {
    switch (__key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(__key, 'ListListClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'list':
        list = fromSerialized(__value, [
          () => List<List<SimpleClass>>(),
          [() => List<SimpleClass>(), () => SimpleClass()]
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListListClass');
  }

  Iterable<String> get keys => ListListClassClassMirror.fields.keys;
}

abstract class _$ListListListClassSerializable extends SerializableMap {
  List<List<List<SimpleClass>>> get list;
  set list(List<List<List<SimpleClass>>> v);

  operator [](Object __key) {
    switch (__key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(__key, 'ListListListClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'list':
        list = fromSerialized(__value, [
          () => List<List<List<SimpleClass>>>(),
          [
            () => List<List<SimpleClass>>(),
            [() => List<SimpleClass>(), () => SimpleClass()]
          ]
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListListListClass');
  }

  Iterable<String> get keys => ListListListClassClassMirror.fields.keys;
}

abstract class _$ListMapClassSerializable extends SerializableMap {
  List<Map<String, SimpleClass>> get list;
  set list(List<Map<String, SimpleClass>> v);

  operator [](Object __key) {
    switch (__key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(__key, 'ListMapClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'list':
        list = fromSerialized(__value, [
          () => List<Map<String, SimpleClass>>(),
          [() => Map<String, SimpleClass>(), null, () => SimpleClass()]
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListMapClass');
  }

  Iterable<String> get keys => ListMapClassClassMirror.fields.keys;
}

abstract class _$ListListMapClassSerializable extends SerializableMap {
  List<List<Map<String, SimpleClass>>> get list;
  set list(List<List<Map<String, SimpleClass>>> v);

  operator [](Object __key) {
    switch (__key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(__key, 'ListListMapClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'list':
        list = fromSerialized(__value, [
          () => List<List<Map<String, SimpleClass>>>(),
          [
            () => List<Map<String, SimpleClass>>(),
            [() => Map<String, SimpleClass>(), null, () => SimpleClass()]
          ]
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListListMapClass');
  }

  Iterable<String> get keys => ListListMapClassClassMirror.fields.keys;
}

abstract class _$MapClassSerializable extends SerializableMap {
  Map<String, SimpleClass> get myMap;
  set myMap(Map<String, SimpleClass> v);

  operator [](Object __key) {
    switch (__key) {
      case 'myMap':
        return myMap;
    }
    throwFieldNotFoundException(__key, 'MapClass');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'myMap':
        myMap = fromSerialized(__value,
            [() => Map<String, SimpleClass>(), null, () => SimpleClass()]);
        return;
    }
    throwFieldNotFoundException(__key, 'MapClass');
  }

  Iterable<String> get keys => MapClassClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_SimpleClass__Constructor([positionalParams, namedParams]) => SimpleClass();

const $$SimpleClass_fields_name = DeclarationMirror(name: 'name', type: String);

const SimpleClassClassMirror = ClassMirror(name: 'SimpleClass', constructors: {
  '': FunctionMirror(name: '', $call: _SimpleClass__Constructor)
}, fields: {
  'name': $$SimpleClass_fields_name
}, getters: [
  'name'
], setters: [
  'name'
], methods: {
  'toString': FunctionMirror(
    name: 'toString',
    returnType: String,
  )
});

_ListClass__Constructor([positionalParams, namedParams]) => ListClass();

const $$ListClass_fields_list =
    DeclarationMirror(name: 'list', type: [List, SimpleClass]);

const ListClassClassMirror = ClassMirror(name: 'ListClass', constructors: {
  '': FunctionMirror(name: '', $call: _ListClass__Constructor)
}, fields: {
  'list': $$ListClass_fields_list
}, getters: [
  'list'
], setters: [
  'list'
]);

_ListTClass__Constructor([positionalParams, namedParams]) => ListTClass();

const $$ListTClass_fields_listT =
    DeclarationMirror(name: 'listT', type: [List, dynamic]);

const ListTClassClassMirror = ClassMirror(name: 'ListTClass', constructors: {
  '': FunctionMirror(name: '', $call: _ListTClass__Constructor)
}, fields: {
  'listT': $$ListTClass_fields_listT
}, getters: [
  'listT'
], setters: [
  'listT'
]);

_GenericTClass__Constructor([positionalParams, namedParams]) => GenericTClass();

const $$GenericTClass_fields_t = DeclarationMirror(name: 't', type: dynamic);

const GenericTClassClassMirror = ClassMirror(
    name: 'GenericTClass',
    constructors: {
      '': FunctionMirror(name: '', $call: _GenericTClass__Constructor)
    },
    fields: {
      't': $$GenericTClass_fields_t
    },
    getters: [
      't'
    ],
    setters: [
      't'
    ]);

_GenericT1T2Class__Constructor([positionalParams, namedParams]) =>
    GenericT1T2Class();

const $$GenericT1T2Class_fields_t1 =
    DeclarationMirror(name: 't1', type: dynamic);
const $$GenericT1T2Class_fields_t2 =
    DeclarationMirror(name: 't2', type: dynamic);

const GenericT1T2ClassClassMirror = ClassMirror(
    name: 'GenericT1T2Class',
    constructors: {
      '': FunctionMirror(name: '', $call: _GenericT1T2Class__Constructor)
    },
    fields: {
      't1': $$GenericT1T2Class_fields_t1,
      't2': $$GenericT1T2Class_fields_t2
    },
    getters: [
      't1',
      't2'
    ],
    setters: [
      't1',
      't2'
    ]);

_ListListClass__Constructor([positionalParams, namedParams]) => ListListClass();

const $$ListListClass_fields_list = DeclarationMirror(name: 'list', type: [
  List,
  [List, SimpleClass]
]);

const ListListClassClassMirror = ClassMirror(
    name: 'ListListClass',
    constructors: {
      '': FunctionMirror(name: '', $call: _ListListClass__Constructor)
    },
    fields: {
      'list': $$ListListClass_fields_list
    },
    getters: [
      'list'
    ],
    setters: [
      'list'
    ]);

_ListListListClass__Constructor([positionalParams, namedParams]) =>
    ListListListClass();

const $$ListListListClass_fields_list = DeclarationMirror(name: 'list', type: [
  List,
  [
    List,
    [List, SimpleClass]
  ]
]);

const ListListListClassClassMirror = ClassMirror(
    name: 'ListListListClass',
    constructors: {
      '': FunctionMirror(name: '', $call: _ListListListClass__Constructor)
    },
    fields: {
      'list': $$ListListListClass_fields_list
    },
    getters: [
      'list'
    ],
    setters: [
      'list'
    ]);

_ListMapClass__Constructor([positionalParams, namedParams]) => ListMapClass();

const $$ListMapClass_fields_list = DeclarationMirror(name: 'list', type: [
  List,
  [
    Map,
    [String, SimpleClass]
  ]
]);

const ListMapClassClassMirror = ClassMirror(
    name: 'ListMapClass',
    constructors: {
      '': FunctionMirror(name: '', $call: _ListMapClass__Constructor)
    },
    fields: {
      'list': $$ListMapClass_fields_list
    },
    getters: [
      'list'
    ],
    setters: [
      'list'
    ]);

_ListListMapClass__Constructor([positionalParams, namedParams]) =>
    ListListMapClass();

const $$ListListMapClass_fields_list = DeclarationMirror(name: 'list', type: [
  List,
  [
    List,
    [
      Map,
      [String, SimpleClass]
    ]
  ]
]);

const ListListMapClassClassMirror = ClassMirror(
    name: 'ListListMapClass',
    constructors: {
      '': FunctionMirror(name: '', $call: _ListListMapClass__Constructor)
    },
    fields: {
      'list': $$ListListMapClass_fields_list
    },
    getters: [
      'list'
    ],
    setters: [
      'list'
    ]);

_MapClass__Constructor([positionalParams, namedParams]) => MapClass();

const $$MapClass_fields_myMap = DeclarationMirror(name: 'myMap', type: [
  Map,
  [String, SimpleClass]
]);

const MapClassClassMirror = ClassMirror(
    name: 'MapClass',
    constructors: {'': FunctionMirror(name: '', $call: _MapClass__Constructor)},
    fields: {'myMap': $$MapClass_fields_myMap},
    getters: ['myMap'],
    setters: ['myMap']);

// **************************************************************************
// InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    SimpleClass: SimpleClassClassMirror,
    ListClass: ListClassClassMirror,
    ListTClass: ListTClassClassMirror,
    GenericTClass: GenericTClassClassMirror,
    GenericT1T2Class: GenericT1T2ClassClassMirror,
    ListListClass: ListListClassClassMirror,
    ListListListClass: ListListListClassClassMirror,
    ListMapClass: ListMapClassClassMirror,
    ListListMapClass: ListListMapClassClassMirror,
    MapClass: MapClassClassMirror
  });

  getClassMirrorFromGenericInstance = (instance) => instance is ListTClass
      ? ListTClassClassMirror
      : instance is GenericTClass
          ? GenericTClassClassMirror
          : instance is GenericT1T2Class ? GenericT1T2ClassClassMirror : null;
}
