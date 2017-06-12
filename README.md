# Bank-Tech-Test-Ruby

Create a simple banking program as a technical skills test. 

## Specification

* You can interact with this code via a REPL like IRB or PRY.
* You can make deposits and withdrawals.
* Account statement (date, amount, balance) printing.

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she will see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

#### How to use

Bellow is a pry transcript of how the program runs from a users perspective:

```
[1] pry(main)> require './lib/account.rb'
=> true
[2] pry(main)> my_ac = Account.new
=> #<Account:0x007f8e209a75f8 @balance=0, @transactions=["date || credit || debit || balance"]>
[3] pry(main)> my_ac.withdraw(10)
=> ["date || credit || debit || balance", "12/06/2017 || || 10.00 || -10.00"]
[4] pry(main)> my_ac.withdraw(10)
RuntimeError: Insuficient funds in account.
from /Users/anthonycrisp/Desktop/Projects/bank_tech_test/lib/account.rb:24:in `withdraw'
[5] pry(main)> my_ac.deposit(100)
=> ["date || credit || debit || balance", "12/06/2017 || || 10.00 || -10.00", "12/06/2017 || 100.00 || || 90.00"]
[6] pry(main)> my_ac.withdraw(10)
=> ["date || credit || debit || balance", "12/06/2017 || || 10.00 || -10.00", "12/06/2017 || 100.00 || || 90.00", "12/06/2017 || || 10.00 || 80.00"]
[7] pry(main)> my_ac.withdraw(10)
=> ["date || credit || debit || balance", "12/06/2017 || || 10.00 || -10.00", "12/06/2017 || 100.00 || || 90.00", "12/06/2017 || || 10.00 || 80.00", "12/06/2017 || || 10.00 || 70.00"]
[8] pry(main)> my_ac.withdraw(10)
=> ["date || credit || debit || balance",
 "12/06/2017 || || 10.00 || -10.00",
 "12/06/2017 || 100.00 || || 90.00",
 "12/06/2017 || || 10.00 || 80.00",
 "12/06/2017 || || 10.00 || 70.00",
 "12/06/2017 || || 10.00 || 60.00"]
[9] pry(main)> my_ac.statement
date || credit || debit || balance
12/06/2017 || || 10.00 || -10.00
12/06/2017 || 100.00 || || 90.00
12/06/2017 || || 10.00 || 80.00
12/06/2017 || || 10.00 || 70.00
12/06/2017 || || 10.00 || 60.00
=> ["date || credit || debit || balance",
 "12/06/2017 || || 10.00 || -10.00",
 "12/06/2017 || 100.00 || || 90.00",
 "12/06/2017 || || 10.00 || 80.00",
 "12/06/2017 || || 10.00 || 70.00",
 "12/06/2017 || || 10.00 || 60.00"]

```
