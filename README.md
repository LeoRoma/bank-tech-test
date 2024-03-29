# bank-tech-test

# Description

This program is able to deposit, withdraw an amount of money, is able to adding the description of a transaction into a statement and finally print the statement.

# How to install

```
Open your terminal/command line.
Clone the repository with: git clone https://github.com/LeoRoma/bank-tech-test.git
Go into the folder: cd bank-tech-test
Bundle install.
```
- The program runs on REPL, such as PRY o IRB
- In the REPL require Bank Account, Bank Transaction and Bank Statement files

```
require './lib/bank_account'
require './lib/bank_statement'
require './lib/bank_transaction'
```

# Tech and test

- Language: Ruby
- Testing Framework: rspec
- Test coverage: simplecov

# Classes and methods

For this program I used 3 classes with the corresponding methods:

### BankAccount
- current_balance

### BankTransaction
- description
- deposit
- withdrawal
- private
- current_time  

### BankStatement
- transactions
- add_transaction
- print

# Approach

- To build this application I used consinstently TDD process (Red, Green, Refactor)
- At the beginning the program was built with only 1 class (BankStatement), later I have realized that was breaking the Single Responsibility Principle. Therefore I started to break the program with extracting the class into 3 classes:

1. BankAccount: holding the current balance of the user
2. BankTransaction: able to deposit or withdraw an amount of money
3. BankStatement: has the possibility to add single transaction into the statement and prints the whole statement.

# Picture of an example in IRB

<img src="./images/Screenshot 2019-09-18 at 10.36.47.png" width="786" height="522">
