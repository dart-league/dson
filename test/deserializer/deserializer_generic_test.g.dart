// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_generic_test;

// **************************************************************************
// DsonGenerator
// **************************************************************************

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

abstract class _$ListClassSerializable extends SerializableMap {
  List<SimpleClass> get list;
  void set list(List<SimpleClass> v);

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
            __value, [() => new List<SimpleClass>(), () => new SimpleClass()]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListClass');
  }

  Iterable<String> get keys => ListClassClassMirror.fields.keys;
}

abstract class _$ListTClassSerializable<T> extends SerializableMap {
  List<T> get listT;
  void set listT(List<T> v);

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
        listT = fromSerialized(__value, () => new List<T>());
        return;
    }
    throwFieldNotFoundException(__key, 'ListTClass');
  }

  Iterable<String> get keys => ListTClassClassMirror.fields.keys;
}

abstract class _$GenericTClassSerializable<T> extends SerializableMap {
  T get t;
  void set t(T v);

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
  void set t1(T1 v);
  void set t2(T2 v);

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
  void set list(List<List<SimpleClass>> v);

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
          () => new List<List<SimpleClass>>(),
          [() => new List<SimpleClass>(), () => new SimpleClass()]
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListListClass');
  }

  Iterable<String> get keys => ListListClassClassMirror.fields.keys;
}

abstract class _$ListListListClassSerializable extends SerializableMap {
  List<List<List<SimpleClass>>> get list;
  void set list(List<List<List<SimpleClass>>> v);

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
          () => new List<List<List<SimpleClass>>>(),
          [
            () => new List<List<SimpleClass>>(),
            [() => new List<SimpleClass>(), () => new SimpleClass()]
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
  void set list(List<Map<String, SimpleClass>> v);

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
          () => new List<Map<String, SimpleClass>>(),
          [() => new Map<String, SimpleClass>(), null, () => new SimpleClass()]
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'ListMapClass');
  }

  Iterable<String> get keys => ListMapClassClassMirror.fields.keys;
}

abstract class _$ListListMapClassSerializable extends SerializableMap {
  List<List<Map<String, SimpleClass>>> get list;
  void set list(List<List<Map<String, SimpleClass>>> v);

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
          () => new List<List<Map<String, SimpleClass>>>(),
          [
            () => new List<Map<String, SimpleClass>>(),
            [
              () => new Map<String, SimpleClass>(),
              null,
              () => new SimpleClass()
            ]
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
  void set myMap(Map<String, SimpleClass> v);

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
        myMap = fromSerialized(__value, [
          () => new Map<String, SimpleClass>(),
          null,
          () => new SimpleClass()
        ]);
        return;
    }
    throwFieldNotFoundException(__key, 'MapClass');
  }

  Iterable<String> get keys => MapClassClassMirror.fields.keys;
}

// **************************************************************************
// MirrorsGenerator
// **************************************************************************

_SimpleClass__Constructor([positionalParams, namedParams]) => new SimpleClass();

const $$SimpleClass_fields_name =
    const DeclarationMirror(name: 'name', type: String);

const SimpleClassClassMirror =
    const ClassMirror(name: 'SimpleClass', constructors: const {
  '': const FunctionMirror(name: '', $call: _SimpleClass__Constructor)
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

_ListClass__Constructor([positionalParams, namedParams]) => new ListClass();

const $$ListClass_fields_list =
    const DeclarationMirror(name: 'list', type: const [List, SimpleClass]);

const ListClassClassMirror = const ClassMirror(
    name: 'ListClass',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _ListClass__Constructor)
    },
    fields: const {
      'list': $$ListClass_fields_list
    },
    getters: const [
      'list'
    ],
    setters: const [
      'list'
    ]);

_ListTClass__Constructor([positionalParams, namedParams]) => new ListTClass();

const $$ListTClass_fields_listT =
    const DeclarationMirror(name: 'listT', type: const [List, dynamic]);

const ListTClassClassMirror = const ClassMirror(
    name: 'ListTClass',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _ListTClass__Constructor)
    },
    fields: const {
      'listT': $$ListTClass_fields_listT
    },
    getters: const [
      'listT'
    ],
    setters: const [
      'listT'
    ]);

_GenericTClass__Constructor([positionalParams, namedParams]) =>
    new GenericTClass();

const $$GenericTClass_fields_t =
    const DeclarationMirror(name: 't', type: dynamic);

const GenericTClassClassMirror = const ClassMirror(
    name: 'GenericTClass',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _GenericTClass__Constructor)
    },
    fields: const {
      't': $$GenericTClass_fields_t
    },
    getters: const [
      't'
    ],
    setters: const [
      't'
    ]);

_GenericT1T2Class__Constructor([positionalParams, namedParams]) =>
    new GenericT1T2Class();

const $$GenericT1T2Class_fields_t1 =
    const DeclarationMirror(name: 't1', type: dynamic);
const $$GenericT1T2Class_fields_t2 =
    const DeclarationMirror(name: 't2', type: dynamic);

const GenericT1T2ClassClassMirror = const ClassMirror(
    name: 'GenericT1T2Class',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _GenericT1T2Class__Constructor)
    },
    fields: const {
      't1': $$GenericT1T2Class_fields_t1,
      't2': $$GenericT1T2Class_fields_t2
    },
    getters: const [
      't1',
      't2'
    ],
    setters: const [
      't1',
      't2'
    ]);

_ListListClass__Constructor([positionalParams, namedParams]) =>
    new ListListClass();

const $$ListListClass_fields_list =
    const DeclarationMirror(name: 'list', type: const [
  List,
  const [List, SimpleClass]
]);

const ListListClassClassMirror = const ClassMirror(
    name: 'ListListClass',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _ListListClass__Constructor)
    },
    fields: const {
      'list': $$ListListClass_fields_list
    },
    getters: const [
      'list'
    ],
    setters: const [
      'list'
    ]);

_ListListListClass__Constructor([positionalParams, namedParams]) =>
    new ListListListClass();

const $$ListListListClass_fields_list =
    const DeclarationMirror(name: 'list', type: const [
  List,
  const [
    List,
    const [List, SimpleClass]
  ]
]);

const ListListListClassClassMirror = const ClassMirror(
    name: 'ListListListClass',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _ListListListClass__Constructor)
    },
    fields: const {
      'list': $$ListListListClass_fields_list
    },
    getters: const [
      'list'
    ],
    setters: const [
      'list'
    ]);

_ListMapClass__Constructor([positionalParams, namedParams]) =>
    new ListMapClass();

const $$ListMapClass_fields_list =
    const DeclarationMirror(name: 'list', type: const [
  List,
  const [
    Map,
    const [String, SimpleClass]
  ]
]);

const ListMapClassClassMirror = const ClassMirror(
    name: 'ListMapClass',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _ListMapClass__Constructor)
    },
    fields: const {
      'list': $$ListMapClass_fields_list
    },
    getters: const [
      'list'
    ],
    setters: const [
      'list'
    ]);

_ListListMapClass__Constructor([positionalParams, namedParams]) =>
    new ListListMapClass();

const $$ListListMapClass_fields_list =
    const DeclarationMirror(name: 'list', type: const [
  List,
  const [
    List,
    const [
      Map,
      const [String, SimpleClass]
    ]
  ]
]);

const ListListMapClassClassMirror = const ClassMirror(
    name: 'ListListMapClass',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _ListListMapClass__Constructor)
    },
    fields: const {
      'list': $$ListListMapClass_fields_list
    },
    getters: const [
      'list'
    ],
    setters: const [
      'list'
    ]);

_MapClass__Constructor([positionalParams, namedParams]) => new MapClass();

const $$MapClass_fields_myMap =
    const DeclarationMirror(name: 'myMap', type: const [
  Map,
  const [String, SimpleClass]
]);

const MapClassClassMirror = const ClassMirror(
    name: 'MapClass',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _MapClass__Constructor)
    },
    fields: const {
      'myMap': $$MapClass_fields_myMap
    },
    getters: const [
      'myMap'
    ],
    setters: const [
      'myMap'
    ]);

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
