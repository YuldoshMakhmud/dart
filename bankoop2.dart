import 'bankoop.dart';

void main() {
  var sa = SavingAccaunt("SA001", 5000, 5);
  sa.deposit(1000);
  sa.withdraw(2000);
  sa.calculateInterest();

  var ca = CurrentAccaunt("CA001", 3000, 1000);
  ca.withdraw(3500);
}
