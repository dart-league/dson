// GENERATED CODE - DO NOT MODIFY BY HAND

part of deserialiazer.deserialize_generic_test;

// **************************************************************************
// Generator: DsonGenerator
// Target: class SimpleClass
// **************************************************************************

abstract class _$SimpleClassSerializable extends SerializableMap {
  get name;
  set name(v);

  operator [](String key) {
    switch (key) {
      case 'name':
        return name;
    }
    throwFieldNotFoundException(key, "SimpleClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'name':
        name = value;
        return;
    }
    throwFieldNotFoundException(key, "SimpleClass");
  }

  get keys => const ['name'];
}

_SimpleClass__Constructor(params) => new SimpleClass();

const $$SimpleClass_fields_name = const DeclarationMirror(type: String);

const SimpleClassClassMirror = const ClassMirror(
    name: 'SimpleClass',
    constructors: const {
      '': const FunctionMirror(
          parameters: const {}, call: _SimpleClass__Constructor)
    },
    fields: const {
      'name': $$SimpleClass_fields_name
    },
    getters: const [
      'name'
    ],
    setters: const [
      'name'
    ]);

// **************************************************************************
// Generator: DsonGenerator
// Target: class ListClass
// **************************************************************************

abstract class _$ListClassSerializable extends SerializableMap {
  get list;
  set list(v);

  operator [](String key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, "ListClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, "ListClass");
  }

  get keys => const ['list'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class ListListClass
// **************************************************************************

abstract class _$ListListClassSerializable extends SerializableMap {
  get list;
  set list(v);

  operator [](String key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, "ListListClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, "ListListClass");
  }

  get keys => const ['list'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class ListListListClass
// **************************************************************************

abstract class _$ListListListClassSerializable extends SerializableMap {
  get list;
  set list(v);

  operator [](String key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, "ListListListClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, "ListListListClass");
  }

  get keys => const ['list'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class ListMapClass
// **************************************************************************

abstract class _$ListMapClassSerializable extends SerializableMap {
  get list;
  set list(v);

  operator [](String key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, "ListMapClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, "ListMapClass");
  }

  get keys => const ['list'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class ListListMapClass
// **************************************************************************

abstract class _$ListListMapClassSerializable extends SerializableMap {
  get list;
  set list(v);

  operator [](String key) {
    switch (key) {
      case 'list':
        return list;
    }
    throwFieldNotFoundException(key, "ListListMapClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'list':
        list = value;
        return;
    }
    throwFieldNotFoundException(key, "ListListMapClass");
  }

  get keys => const ['list'];
}

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

// **************************************************************************
// Generator: DsonGenerator
// Target: class MapClass
// **************************************************************************

abstract class _$MapClassSerializable extends SerializableMap {
  get map;
  set map(v);

  operator [](String key) {
    switch (key) {
      case 'map':
        return map;
    }
    throwFieldNotFoundException(key, "MapClass");
  }

  operator []=(String key, value) {
    switch (key) {
      case 'map':
        map = value;
        return;
    }
    throwFieldNotFoundException(key, "MapClass");
  }

  get keys => const ['map'];
}

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
