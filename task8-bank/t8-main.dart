class BankAccount {
  String accountID;
  double balance;

  BankAccount(this.accountID, this.balance);
  BankAccount.initAccount(String accountID) : this(accountID, 0);

  void withdraw(double amount) {
    if (amount <= 0) {
      print("ERROR MESSAGE! Cannot withdraw a non-positive amount, try again");
    } else if (amount > balance) {
      print(
          "ERROR MESSAGE! Balance is NOT sufficient. Available balance: \$$balance");
    } else {
      balance -= amount;
      print("Deducted \$$amount. Remaining balance: \$$balance");
    }
  }

  void deposit(double amount) {
    if (amount <= 0) {
      print("ERROR MESSAGE! Deposit amount must be greater than zero.");
    } else {
      balance += amount;
      print("Deposited \$$amount. New balance: \$$balance.");
    }
  }

  void displayAccountInfo() {
    print("Account ID: $accountID, Balance: \$$balance");
  }
}

void main() {
  var account1 = BankAccount("Youssef246", 3000.0);
  var account2 = BankAccount.initAccount("Mohamed135");

  // Account 1 operations
  print("\n--- Account 1 ---");
  account1.displayAccountInfo();
  account1.deposit(250);
  account1.withdraw(4300);
  account1.withdraw(500);

  // Account 2 operations
  print("\n--- Account 2 ---");
  account2.displayAccountInfo();
  account2.deposit(400);
  account2.withdraw(150);
}
