// class Car {
//   static String color = 'black';

//   void getColor() {
//     print('Color of Car ${Car.color} ');
//   }

//   void setColor(String color) {
//     Car.color = color;
//     print('Color has benn changed\n');
//   }
// }
// class Student {
//   static String name = 'Abror';
//   static int age = 29;
//   static String city = "Kokand";

//   void getInfo() {
//     print(
//       'Hi my name is ${name}. I am ${age} years old My hometown is ${city}',
//     );
//   }

//   void setInfo(String name, int age, String city) {
//     Student.name = name;
//     Student.age = age;
//     Student.city = city;
//     print("Student info ${name} $age ${city}");
//   }
// }

// class Unique {
//   int number2 = 20;

//   void getResult() {
//     for (int results = 15; results <= number2; results++) {
//       print(results);
//     }
//   }
// }

//override

// class Car {
//   String name;
//   String color;
//   Car(this.color, this.name);

//   @override
//   String toString() {
//     return "Car's name$name\nCar's color: $color";
//   }
// }

class Person {
  String name;
  int age;
  String location;
  Person(this.name, this.age, this.location);

  Person fromJson(Map<String, dynamic> json) {
    String name = json['name'];
    int age = json['age'];
    String location = json['location'];
    return Person(name, age, location);
  }

  @override
  String toString() {
    return "My name is $name\nMy age is: $age\nMy hometown is $location";
  }
}
