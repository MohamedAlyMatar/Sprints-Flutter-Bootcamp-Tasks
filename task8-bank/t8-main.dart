class BankAccount {
  // Variables for account ID and balance
  String accountID;
  double balance;

  // Regular constructor
  BankAccount(this.accountID, this.balance);

  // Named constructor to initialize balance to 0
  BankAccount.initialize(this.accountID) : balance = 0;

  // Method to withdraw money
  void withdraw(double amount) {
    print("\nWithdrawing $amount, please wait...");
    if (amount <= 0) {
      print("Invalid withdrawal amount. Please enter a positive value.");
    } else if (amount > balance) {
      print("Insufficient balance. Current balance: \$${balance}");
    } else {
      balance -= amount;
      print("Withdrawal successful! New balance: \$${balance}");
    }
  }

  // Method to deposit money
  void deposit(double amount) {
    print("\nDepositing $amount, please wait...");
    if (amount <= 0) {
      print("Invalid deposit amount. Please enter a positive value.");
    } else {
      balance += amount;
      print("Deposit successful! New balance: \$${balance.toStringAsFixed(2)}");
    }
  }

  // Method to display account information
  void displayAccountInfo() {
    print("\nDisplaying account information...");
    print("Account ID: $accountID");
    print("Current Balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  // Creating BankAccount using the regular constructor
  BankAccount account1 = BankAccount("12345", 1000.0);

  // Creating BankAccount using the named constructor
  BankAccount account2 = BankAccount.initialize("67890");

  // Performing operations on account1
  print("\n---------- Account 1 Operations ----------");
  account1.displayAccountInfo();
  account1.deposit(500.0);
  account1.withdraw(200.0);
  account1.withdraw(2000.0);

  // Performing operations on account2
  print("\n---------- Account 2 Operations ----------");
  account2.displayAccountInfo();
  account2.deposit(300.0);
  account2.withdraw(50.0);
  account2.withdraw(-100.0);
}
