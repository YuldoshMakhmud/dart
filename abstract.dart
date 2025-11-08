//abstrack class
//class key sozidan oldin abstract key sozi bulishi kere
//abstarct metodlarini tanasiz elon qilish mumkin emas
//abstarct klasdan foydalang subclass uning abstract metodlari qanday yozilishini yashiradi
//class abstractboldi degani undan metod yoki maydonlar yuq degani emas

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();
  @override
  String toString() {
    return 'I am a $runtimeType';
  }
}

class Bear extends Animal {
  @override
  void eat() {}
  @override
  void move() {}
}
