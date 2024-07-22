class Account {
  int id, balance;
  String name;

  Account(this.id, this.name, this.balance);

  int get current => this.balance;
  void printBalance() {
    print("$name 계좌의 현재 잔액은 $current입니다");
  }

  void deposit(int amount) => this.balance += amount;
  void withdraw(int amount) {
    if (this.balance - amount < 0) {
      print("출금할 수 없습니다.");
    } else {
      this.balance -= amount;
    }
  }
}

class MaxLimitAccount extends Account {
  int maxLimit;

  MaxLimitAccount(int id, String name, int balance, this.maxLimit)
      : super(id, name, balance);

  @override
  void deposit(int amount) {
    if (balance + amount > maxLimit) {
      print("최대 한도를 초과하였습니다.");
    } else {
      balance += amount;
    }
  }
}

void main() {
  Account acc1 = Account(1, "MJ", 1000);
  acc1.printBalance();
  acc1.deposit(500);
  acc1.printBalance();
  acc1.withdraw(200);
  acc1.printBalance();
  acc1.withdraw(1500);
  acc1.printBalance();

  print("");

  MaxLimitAccount maxAcc1 = MaxLimitAccount(2, "Tom", 2000, 3000);
  maxAcc1.printBalance();
  maxAcc1.deposit(500);
  maxAcc1.printBalance();
  maxAcc1.deposit(1000);
  maxAcc1.printBalance();
  maxAcc1.withdraw(500);
  maxAcc1.printBalance();
}
