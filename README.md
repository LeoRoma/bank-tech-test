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
require './lib/bank_transactions'
```

# Tech and test

- Language: Ruby
- Testing Framework: rspec
- Test coverage: simplecov

# Classes and methods

For this program I used 3 classes with the corresponding methods:

## BankAccount
- current_balance

## BankTransaction
- description
- deposit
- withdrawal
- private
- current_time  

## BankStatement
- transactions
- add_transaction
- print

# Approach


