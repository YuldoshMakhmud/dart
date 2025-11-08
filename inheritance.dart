// Extending classes
//oop obyekt yunal tirilgan dasturlarshniing asosiy prinsipo bu siz yaratgan klasslarning ortasida ozaro bogliqlikni zor shakillantirshdab iborat
//inheritance
//interface lar
//mixinlar
//Extension metodlar

class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void doSomePrint() {
    print('parent class');
  }
}

class Student extends Person {
  Student(String name, int age) : super(name, age);

  @override
  void doSomePrint() {
    print("Extra info");
    super.doSomePrint();
  }
}

class Driver extends Person {
  Driver(String name, int age) : super(name, age);
}
