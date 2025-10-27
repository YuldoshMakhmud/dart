//assiy sintaksis va input/output

//1
// void main() {
//   print("hello world");
// }

//2
// import 'dart:io';

// void main() {
//   String? name = stdin.readLineSync();
//   print("Salom $name");
// }

// 3
// import 'dart:io';

// void main() {
//   // 1-sonni kiritish
//   stdout.write('1-sonni kiriting: ');
//   String? birinchi = stdin.readLineSync();

//   // 2-sonni kiritish
//   stdout.write('2-sonni kiriting: ');
//   String? ikkinchi = stdin.readLineSync();

//   // Matnni sonlarga aylantiramiz
//   int son1 = int.parse(birinchi!);
//   int son2 = int.parse(ikkinchi!);

//   // Yig‘indini hisoblaymiz
//   int yigindi = son1 + son2;

//   print('Yig‘indi: $yigindi');
// }

//4

import 'dart:io';

void main() {
  stdout.write('1-sonni kiriting: ');
  String? a = stdin.readLineSync();

  stdout.write('2-sonni kiriting: ');
  String? b = stdin.readLineSync();

  stdout.write('3-sonni kiriting: ');
  String? c = stdin.readLineSync();

  int? n1 = int.tryParse(a ?? '');
  int? n2 = int.tryParse(b ?? '');
  int? n3 = int.tryParse(c ?? '');

  if (n1 == null || n2 == null || n3 == null) {
    print('Iltimos, to‘g‘ri butun son kiriting!');
  } else {
    int engKichik = n1;
    if (n2 < engKichik) engKichik = n2;
    if (n3 < engKichik) engKichik = n3;

    print('Eng kichigi: $engKichik');
  }
}
