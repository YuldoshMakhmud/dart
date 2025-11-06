// void myPrint() {
//   print('go go');
// }

// void main() {
//   myPrint();
// }

// optional positional parametr

// void main() {
//   printUser("abror", 18);
// }

// void printUser(String name, [int age = 20]) {
//   print(name);
//   print(age);
// }

//optional named paramter

void printUser(String name, {int age = 20}) {
  print(name);
  print(age);
}

void main() {
  printUser("abror", age: 23);
}
