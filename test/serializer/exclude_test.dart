part of test_dson;

exclude_test() {
  group('exclude', () {
    var manager = new Employee()
          ..id = 1
          ..firstName = 'Jhon'
          ..lastName = 'Doe';
        manager.address = new Address()
            ..id = 1
            ..street = 'some street'
            ..city = 'Miami'
            ..country = 'USA'
            ..owner = manager;
    test('firstName', () {
      expect(serialize(manager, exclude: 'firstName'), '{"id":1,"lastName":"Doe","address":{"id":1}}');
    });
    
    test('firstName and lastName', () {
      expect(serialize(manager, exclude: ['firstName', 'lastName']), '{"id":1,"address":{"id":1}}');
    });
    
    test('address.street without depth', () {
      expect(serialize(manager, exclude: {'address': 'street'}), '{"id":1,"firstName":"Jhon","lastName":"Doe","address":{"id":1}}');
    });
    
    test('address.street with depth', () {
      expect(serialize(manager, exclude: {'address': 'street'}, depth: 'address'), '{"id":1,"firstName":"Jhon","lastName":"Doe","address":{"id":1,"city":"Miami","country":"USA","owner":{"id":1}}}');
    });
  });
}