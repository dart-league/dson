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
    
    test('address.street and address.city with depth', () {
      expect(serialize(manager, exclude: {'address': ['street', 'city']}, depth: 'address'), '{"id":1,"firstName":"Jhon","lastName":"Doe","address":{"id":1,"country":"USA","owner":{"id":1}}}');
    });
  });
  

  group('exclude from list >', () {
    
    
    var student1 = new Student()
        ..id = 1
        ..name = 'student1',
      student2 = new Student()
        ..id = 2
        ..name = 'student2',
      student3 = new Student()
        ..id = 3
        ..name = 'student3',
      course1 = new Course()
        ..id = 1
        ..beginDate = new DateTime.utc(2015, 1, 1)
        ..students = [student1, student2],
      course2 = new Course()
        ..id = 2
        ..beginDate = new DateTime.utc(2015, 1, 2)
        ..students = [student2, student3],
      course3 = new Course()
        ..id = 3
        ..beginDate = new DateTime.utc(2015, 1, 3)
        ..students = [student1, student3];
    
    student1.courses = [course1, course3];
    student2.courses = [course1, course2];
    student3.courses = [course2, course3];
    
    var students = [student1, student2, student3]; 
    
    test('students name', () {
      expect(serialize(students, exclude: 'name'), '[{"id":1,"courses":[{"id":1},{"id":3}]},{"id":2,"courses":[{"id":1},{"id":2}]},{"id":3,"courses":[{"id":2},{"id":3}]}]');
    });
    
    test('student.courses*.beginDate', () {
      expect(serialize(students, depth: 'courses', exclude: {'courses': 'beginDate'}), '[{"id":1,"name":"student1","courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":3,"students":[{"id":1},{"id":3}]}]},{"id":2,"name":"student2","courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":2,"students":[{"id":2},{"id":3}]}]},{"id":3,"name":"student3","courses":[{"id":2,"students":[{"id":2},{"id":3}]},{"id":3,"students":[{"id":1},{"id":3}]}]}]');
    });
    
    test('students*.name and students*.courses*.beginDate', () {
      expect(serialize(students, depth: 'courses', exclude: ['name', {'courses': 'beginDate'}]), '[{"id":1,"courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":3,"students":[{"id":1},{"id":3}]}]},{"id":2,"courses":[{"id":1,"students":[{"id":1},{"id":2}]},{"id":2,"students":[{"id":2},{"id":3}]}]},{"id":3,"courses":[{"id":2,"students":[{"id":2},{"id":3}]},{"id":3,"students":[{"id":1},{"id":3}]}]}]');
    });
  });
}