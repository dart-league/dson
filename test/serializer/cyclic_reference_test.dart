part of test_dson;

void cyclic_reference_serialize() {
  group('ciclical test with id >', () {
  
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
  
    var employee = new Employee()
      ..id = 2
      ..firstName = 'Luis'
      ..lastName = 'Vargas'
      ..manager = manager;
    employee.address = new Address()
        ..id = 2
        ..street = 'some street'
        ..city = 'Miami'
        ..country = 'USA'
        ..owner = employee;
       
    test('serialize Employee without address and manager', () {
      expect(serialize(employee), '{"id":2,"firstName":"Luis","lastName":"Vargas","address":{"id":2},"manager":{"id":1}}');
    });
    test('serialize employee.address without owner', () {
      expect(serialize(employee.address), '{"id":2,"street":"some street","city":"Miami","country":"USA","owner":{"id":2}}');
    });
    
    test('serialize employee with address and no manager', () {
      expect(serialize(employee, depth: ['address']),
             '{"id":2,"firstName":"Luis","lastName":"Vargas",'
                '"address":{"id":2,"street":"some street","city":"Miami","country":"USA","owner":{"id":2}},'
                '"manager":{"id":1}}');
    });
    
    test('serialize employee with address, manager and manager address', () {
      expect(serialize(employee, depth: [{'manager': ['address']}, 'address']),
             '{"id":2,"firstName":"Luis","lastName":"Vargas",'
                '"address":{"id":2,"street":"some street","city":"Miami","country":"USA",'
                  '"owner":{"id":2}},'
                '"manager":{"id":1,"firstName":"Jhon","lastName":"Doe",'
                  '"address":{"id":1,"street":"some street","city":"Miami","country":"USA","owner":{"id":1}}}}');
    });
  });
  
  group('Ciclical Test without id >', () {
  
    var manager = new Employee2()
      ..firstName = 'Jhon'
      ..lastName = 'Doe';
    manager.address = new Address2()
        ..street = 'some street'
        ..city = 'Miami'
        ..country = 'USA'
        ..owner = manager;
  
    var employee = new Employee2()
      ..firstName = 'Luis'
      ..lastName = 'Vargas'
      ..manager = manager;
    employee.address = new Address2()
        ..street = 'some street'
        ..city = 'Miami'
        ..country = 'USA'
        ..owner = employee;
       
    test('serialize Employee without address and manager', () {
      expect(serialize(employee), matches(
          r'\{'
              r'"firstName":"Luis",'
              r'"lastName":"Vargas",'
              r'"address":\{"hashcode":\d+\},'
              r'"manager":\{"hashcode":\d+\},'
              r'"hashcode":\d+'
          '\}'));
    });
    test('serialize employee.address without owner', () {
      expect(serialize(employee.address), matches(
          r'\{'
              r'"street":"some street",'
              r'"city":"Miami",'
              r'"country":"USA",'
              r'"owner":\{"hashcode":\d+\},'
              r'"hashcode":\d+'));
    });
    
    test('serialize employee with address and no manager', () {
      expect(serialize(employee, depth: ['address']),
             matches(
                 r'\{"firstName":"Luis","lastName":"Vargas",'
                    r'"address":\{"street":"some street","city":"Miami","country":"USA","owner":\{"hashcode":\d+\},"hashcode":\d+\},'
                    r'"manager":\{"hashcode":\d+\},'
                 r'"hashcode":\d+\}'));
    });
    
    test('serialize employee with address, manager and manager address', () {
      expect(serialize(employee, depth: [{'manager': ['address']}, 'address']),
             matches(
                 r'\{'
                    r'"firstName":"Luis",'
                    r'"lastName":"Vargas",'
                    r'"address":\{'
                        r'"street":"some street",'
                        r'"city":"Miami",'
                        r'"country":"USA",'
                        r'"owner":\{"hashcode":\d+\},'
                        r'"hashcode":\d+'
                    r'\},'
                    r'"manager":\{'
                        r'"firstName":"Jhon",'
                        r'"lastName":"Doe",'
                        r'"address":\{'
                            r'"street":"some street",'
                            r'"city":"Miami",'
                            r'"country":"USA",'
                            r'"owner":\{"hashcode":\d+\},'
                            r'"hashcode":\d+'
                        r'\},'
                        r'"hashcode":\d+'
                    r'\},'
                    r'"hashcode":\d+'
                r'\}'));
    });
  });
  
  group('ciclical list test with id >', () {
    
    
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
    
    test('serializing student1 without courses', () {
      expect(serialize(student1), '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]}');
    });
    
    test('serializing student1 with courses', () {
      expect(serialize(student1, depth: ['courses']), 
          '{'
            '"id":1,'
            '"name":"student1",'
            '"courses":['
              '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
              '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
            ']'
          '}');
    });
    
    test('serializing student1.courses without students', () {
      expect(serialize(student1.courses), 
          '['
            '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
            '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
          ']');
    });

    test('serializing student1.courses with students', () {
      expect(serialize(student2.courses, depth: ['students']), 
          '['
            '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":['
              '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]},'
              '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]}'
            ']},'
            '{"id":2,"beginDate":"2015-01-02T00:00:00.000Z","students":['
              '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]},'
              '{"id":3,"name":"student3","courses":[{"id":2},{"id":3}]}'
            ']}'
          ']');
    }); 
  });
        
}

@cyclical
class Employee {
  int id;
  String firstName;
  String lastName;
  
  Address address;
  
  Employee manager;
}

@cyclical
class Address {
  int id;
  String street;
  String city;
  String country;
  String postalCode;
  
  Employee owner;
}

@cyclical
class Employee2 {
  String firstName;
  String lastName;
  
  Address2 address;
  
  Employee2 manager;
}

@cyclical
class Address2 {
  String street;
  String city;
  String country;
  String postalCode;
  
  Employee2 owner;
}

@cyclical
class Student {
  int id;
  String name;
  
  List<Course> courses;
}

@cyclical
class Course {
  int id;
  
  DateTime beginDate;
  
  List<Student> students;
}