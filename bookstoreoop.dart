// 2. Onlayn kitob do’koni (Bookstore)

// Bu loyiha orqali biz OOP konseptlarini real e-commerce tizimida ishlatishni ko‘ramiz: sinflar, meros, interfeyslar, composition va polimorfizm.

// Loyiha talablari

// Kitoblar va foydalanuvchilarni boshqarish

// Turli kitob turlari: PrintedBook va DigitalBook

// Buyurtmalarni boshqarish

// Har bir kitob sotib olinadigan narsa sifatida ishlatiladi (interface)

// interface:  har  qanday sotib olinadugan narsa
abstract class Purchasable {
  double getPrice();
  void purchase();
}

//base class: Book
class Book implements Purchasable {
  String title;
  String author;
  double price;
  Book(this.title, this.author, this.price);

  @override
  double getPrice() => price;

  @override
  void purchase() {
    print("$title kitobi sotib olindi. Narxi: \$${getPrice()}");
  }
}

//derived class PrintedBook
class PrintedBook extends Book {
  double shippingCost;

  PrintedBook(String title, String author, double price, this.shippingCost)
    : super(title, author, price);

  @override
  double getPrice() => price + shippingCost;
}

//devived class DigitalBook
class DigitalBook extends Book {
  double filesize; //mb
  DigitalBook(String title, String author, double price, this.filesize)
    : super(title, author, price);

  @override
  void purchase() {
    print(
      '$title raqamli kitobi sotib olindi. yuklab olish mumkin. Narxi \$${price}',
    );
  }
}

//user
class User {
  String name;
  List<Book> cart = [];
  User(this.name);
  void addToCart(Book book) {
    cart.add(book);
    print('${book.title} savatg  qushildi,');
  }

  void checkout() {
    double total = 0;
    for (var book in cart) {
      total += book.getPrice();
      book.purchase();
    }
    print('Jami tulov \$${total}');
  }
}

void main() {
  var user = User('Ali');

  var book1 = PrintedBook('Dart Guide', 'John Doe', 20, 5);
  var book2 = DigitalBook('Flutter Recipes', 'Jane Smith', 15, 50);

  user.addToCart(book1);
  user.addToCart(book2);

  user.checkout();
}
