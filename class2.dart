// import 'class1.dart';

// void main() {
//   Student kidInfo = Student();
//   kidInfo
//     ..setInfo('Maxmud', 29, "Kokand")
//     ..getInfo();
// }
// import 'class1.dart';

// void main() {
//   Unique getResults = Unique();
//   getResults.getResult();
// }
// import 'class1.dart';

// void main() {
//   Car metiz = Car("Oq", "Matiz");
//   print(metiz);
// }
import 'class1.dart';

void main() {
  Map<String, dynamic> json = {
    'name': 'Makhmud',
    'age': 29,
    'location': 'kokand',
  };

  Person person = Person("max", 30, "kokand");
  Person newPerson = person.fromJson(json);
  print(newPerson);
}
