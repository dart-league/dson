part of test_dson;

simple_serilize() {

  group('simple serialize >', () {
    test('serialize: simple String array test', () {
      String str = serialize(['test1', 'test2']);
      expect(str, '["test1","test2"]');
    });

    test('serialize: mixed nested arrays', () {
      String str = serialize([[1,2,3],[3,4,5]]);
      expect(str, '[[1,2,3],[3,4,5]]');

      str = serialize(["test1", ["a","b"], [1,2], 3]);
      expect(str, '["test1",["a","b"],[1,2],3]');
    });

    test('serialize: simple map test', () {
      Map map = {"key1": "val1", "key2": 2};

      String str = serialize(map);
      expect(str, '{"key1":"val1","key2":2}');
    });

    test('serialize: mixed nested map', () {
      Map map = {
        "itsAmap": {
          "key1": 1,
          "key2": "val"
        },
        "itsAarray": [1,2,3],
        "keyk": "valo"
      };

      String str = serialize(map);
      expect(str, '{"itsAmap":{"key1":1,"key2":"val"},"itsAarray":[1,2,3],"keyk":"valo"}');
    });
    
    test('serialize: simple object', () {
      var obj = {
        "test": "test"
      };
      JustObject test = new JustObject();
      test.object = obj;
      
      expect(serialize(test), '{"object":{"test":"test"}}');
    });

    test('serialize: simple class', () {
      var test = new TestClass1();
      test.name = "test1";
      String str = serialize(test);
      expect(str,'{"name":"test1"}');
    });
    
    test('serialize: ignore in object', () {
      var test = new TestClass1();
      test.name = "test";
      test.ignored = true;
      expect(serialize(test), '{"name":"test"}');
    });
    
    test('serialize: renamed property of object', () {
      var test = new TestClass1();
      test.renamed = "test";
      expect(serialize(test), '{"the_renamed":"test"}');
    });

    test('serialize: simple getter class', () {
      expect(serialize(new TestGetter("test2")), '{"name":"test2"}');
    });

    test('serialize: nested class', () {
      expect(serialize(new NestedClass("test", [1,2,3], new TestGetter("get it"))),
        '{"name":"test","list":[1,2,3],"getter":{"name":"get it"}}');
    });
  });
}