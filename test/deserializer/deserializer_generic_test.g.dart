// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_generic_test;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$SimpleClassSerializable extends SerializableMap {
  String get name;
  void set name(String v);
  String toString();

  operator [](Object key) {
    switch (key) {
      case 'name':
        return name;
      case 'toString':
        return toString;
    }
    throwFieldNotFoundException(key, 'SimpleClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'name':
        name = value;
        return;
    }
    throwFieldNotFoundException(key, 'SimpleClass');
  }

  Iterable<String> get keys => SimpleClassClassMirror.fields.keys;
}

abstract class _$ListClassSerializable extends SerializableMap {
  List<SimpleClass> get list;
  void set list(List<SimpleClass> v);

  operator [](Object key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, 'ListClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, 'ListClass');
  }

  Iterable<String> get keys => ListClassClassMirror.fields.keys;
}

abstract class _$ListListClassSerializable extends SerializableMap {
  List<List<SimpleClass>> get list;
  void set list(List<List<SimpleClass>> v);

  operator [](Object key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, 'ListListClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, 'ListListClass');
  }

  Iterable<String> get keys => ListListClassClassMirror.fields.keys;
}

abstract class _$ListListListClassSerializable extends SerializableMap {
  List<List<List<SimpleClass>>> get list;
  void set list(List<List<List<SimpleClass>>> v);

  operator [](Object key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, 'ListListListClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, 'ListListListClass');
  }

  Iterable<String> get keys => ListListListClassClassMirror.fields.keys;
}

abstract class _$ListMapClassSerializable extends SerializableMap {
  List<Map<String, SimpleClass>> get list;
  void set list(List<Map<String, SimpleClass>> v);

  operator [](Object key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, 'ListMapClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, 'ListMapClass');
  }

  Iterable<String> get keys => ListMapClassClassMirror.fields.keys;
}

abstract class _$ListListMapClassSerializable extends SerializableMap {
  List<List<Map<String, SimpleClass>>> get list;
  void set list(List<List<Map<String, SimpleClass>>> v);

  operator [](Object key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, 'ListListMapClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, 'ListListMapClass');
  }

  Iterable<String> get keys => ListListMapClassClassMirror.fields.keys;
}

abstract class _$MapClassSerializable extends SerializableMap {
  Map<String, SimpleClass> get map;
  void set map(Map<String, SimpleClass> v);

  operator [](Object key) {
    switch (key) {
      case 'map':
        return map;
    }
    throwFieldNotFoundException(key, 'MapClass');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'map':
        map = value;
        return;
    }
    throwFieldNotFoundException(key, 'MapClass');
  }

  Iterable<String> get keys => MapClassClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_SimpleClass__Constructor(params) => new SimpleClass();

const $$SimpleClass_fields_name = const DeclarationMirror(type: String);

const SimpleClassClassMirror =
    const ClassMirror(name: 'SimpleClass', constructors: const {
  '': const FunctionMirror(
      parameters: const {}, call: _SimpleClass__Constructor)
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
_ListClass__Constructor(params) => new ListClass();

const $$ListClass_fields_list =
    const DeclarationMirror(type: const [List, SimpleClass]);

const ListClassClassMirror =
    const ClassMirror(name: 'ListClass', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _ListClass__Constructor)
}, fields: const {
  'list': $$ListClass_fields_list
}, getters: const [
  'list'
], setters: const [
  'list'
]);
_ListListClass__Constructor(params) => new ListListClass();

const $$ListListClass_fields_list = const DeclarationMirror(type: const [
  List,
  const [List, SimpleClass]
]);

const ListListClassClassMirror =
    const ClassMirror(name: 'ListListClass', constructors: const {
  '': const FunctionMirror(
      parameters: const {}, call: _ListListClass__Constructor)
}, fields: const {
  'list': $$ListListClass_fields_list
}, getters: const [
  'list'
], setters: const [
  'list'
]);
_ListListListClass__Constructor(params) => new ListListListClass();

const $$ListListListClass_fields_list = const DeclarationMirror(type: const [
  List,
  const [
    List,
    const [List, SimpleClass]
  ]
]);

const ListListListClassClassMirror =
    const ClassMirror(name: 'ListListListClass', constructors: const {
  '': const FunctionMirror(
      parameters: const {}, call: _ListListListClass__Constructor)
}, fields: const {
  'list': $$ListListListClass_fields_list
}, getters: const [
  'list'
], setters: const [
  'list'
]);
_ListMapClass__Constructor(params) => new ListMapClass();

const $$ListMapClass_fields_list = const DeclarationMirror(type: const [
  List,
  const [
    Map,
    const [String, SimpleClass]
  ]
]);

const ListMapClassClassMirror = const ClassMirror(
    name: 'ListMapClass',
    constructors: const {
      '': const FunctionMirror(
          parameters: const {}, call: _ListMapClass__Constructor)
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
_ListListMapClass__Constructor(params) => new ListListMapClass();

const $$ListListMapClass_fields_list = const DeclarationMirror(type: const [
  List,
  const [
    List,
    const [
      Map,
      const [String, SimpleClass]
    ]
  ]
]);

const ListListMapClassClassMirror =
    const ClassMirror(name: 'ListListMapClass', constructors: const {
  '': const FunctionMirror(
      parameters: const {}, call: _ListListMapClass__Constructor)
}, fields: const {
  'list': $$ListListMapClass_fields_list
}, getters: const [
  'list'
], setters: const [
  'list'
]);
_MapClass__Constructor(params) => new MapClass();

const $$MapClass_fields_map = const DeclarationMirror(type: const [
  Map,
  const [String, SimpleClass]
]);

const MapClassClassMirror =
    const ClassMirror(name: 'MapClass', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _MapClass__Constructor)
}, fields: const {
  'map': $$MapClass_fields_map
}, getters: const [
  'map'
], setters: const [
  'map'
]);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    SimpleClass: SimpleClassClassMirror,
    ListClass: ListClassClassMirror,
    ListListClass: ListListClassClassMirror,
    ListListListClass: ListListListClassClassMirror,
    ListMapClass: ListMapClassClassMirror,
    ListListMapClass: ListListMapClassClassMirror,
    MapClass: MapClassClassMirror
  });
  initFunctionMirrors({});
}
