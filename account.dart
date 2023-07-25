


class Account {

    // Attributes
    double ? amount;
    double ? rate;

    // Constructor
    Account (
      this.amount,
      this.rate
    );

    // Methodes
    void display(){
      print("Account | Amount : ${this.amount} | rate : ${this.rate}");
    }

    deposit(amount, x) {
      return amount = amount + x;
    }

    withdraw(amount, x) {
      if(amount < x){
        throw new Exception("Can't withdraw an amount that's more than what's on the account.");
      }
      return amount = amount - x;
    }

    interest(amount, rate) {
      double interest = 0;
      return interest = ( amount * rate )/ 100; 
    }

}