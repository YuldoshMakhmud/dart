class Contact {
  String name;
  String phone;
  Contact(this.name, this.phone);

  void display() {
    print("👤 $name — 📞 $phone");
  }
}

class ConatctMeneger {
  final List<Contact> _contacts = [];

  void addContact(Contact contact) {
    _contacts.add(contact);
    print("${contact.name} qushildi");
  }

  void removeContact(String name) {
    _contacts.removeWhere((c) => c.name == name);
    print("🗑️ $name o‘chirildi.");
  }

  void showContacts() {
    if (_contacts.isEmpty) {
      print('kontaktlar yuq');
    } else {
      print("kontaktlar ruyhati:");
      for (var c in _contacts) {
        c.display();
      }
    }
  }
}

void main() {
  var maneger = ConatctMeneger();

  // kontak qushish
  maneger.addContact(Contact("max", "123"));
  maneger.addContact(Contact("REX", "345"));

  //KONTAKLARINI KURISH
  maneger.showContacts();
  //kontakt uchurish
  maneger.removeContact('max');

  //yangilangan ruyhat
  maneger.showContacts();
}
