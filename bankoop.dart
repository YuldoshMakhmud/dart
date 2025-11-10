// base class: umumiy hisob
class Accaunt {
  String AccountNumber;
  double balance;

  Accaunt(this.AccountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("$amount qoshildi. Yangi balance $balance");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("$amount yechildi. Yangi balance $balance");
    } else {
      print("blans yetarli emas");
    }
  }

  void display() {
    print('hisob raqami: $AccountNumber, Balance: $balance');
  }
}

//Derived class: omonat hisob
class SavingAccaunt extends Accaunt {
  double interestRate;

  SavingAccaunt(String accNum, double bal, this.interestRate)
    : super(accNum, bal);

  void calculateInterest() {
    double interest = balance * interestRate / 100;
    print('Foiz $interest');
  }
}

//derived class : joriy hisob
class CurrentAccaunt extends Accaunt {
  double overdraftLimit;
  CurrentAccaunt(String accNum, double bal, this.overdraftLimit)
    : super(accNum, bal);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print("$amount yechildi. Yangi balance: $balance");
    } else {
      print('Balance va overdraft yetarli emas!');
    }
  }
}
