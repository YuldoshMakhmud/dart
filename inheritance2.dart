import 'inheritance.dart';

void main() {
  // final person = Person('makhmud', 29);
  // final student = Student("Muhammad", 28);
  // print(person.name);
  // print(student.name);
  Person dasturchi = Person("Makhmud", 29);
  Person itishnik = Student("Muhammad", 29);
  print(dasturchi.name);
  print(itishnik.name);
  dasturchi.doSomePrint();
}
