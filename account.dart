
class Account {

    // Attributes
    double amount;
    double rate;

    // Constructor
    Account (
      this.amount,
      this.rate
    );

    // Methodes
    void display(){
      print("Account | Amount : ${this.amount}£ | rate : ${this.rate}%");
    }

    double deposit(double x) {
      amount += x;
      return amount;
    }

    void withdraw(double x) {
      if(amount < x){
        throw new Exception("Can't withdraw an amount that's more than what's on the account.");
      }
      else 
        amount = amount - x;
    }

    void interest(amount, rate) {
      int temp = 365;
      double interest = ( amount * rate )/ 100 * temp; 
      amount += interest;
    }

}

void main() {
  Account account = new Account(2000, 2);
  account.display();

  account.deposit(5000);
  account.display();

  account.withdraw(1500);
  account.display();

  account.interest(2000, 2);
  account.display();
}