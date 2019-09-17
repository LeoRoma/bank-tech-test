# bank-tech-test

# Description

This program is able to deposit, withdraw an amount of money, is able to adding the description of a transaction into a statement and finally print the statement.

# How to install

Open your terminal/command line.
Clone the repository.
Go into the folder.
Run the text editor.
Bundle install.
The program runs on REPL.

#Tech and test

Language: Ruby
Test: rspec, simplecov

# Classes and methods

For this program I used 3 classes with the corresponding methods:

- BankAccount
- #current_balance

- BankTransaction
 #description
 #deposit
 #withdrawal
  private
 #current_time  

- BankStatement
 #transactions
 #add_transaction
 #print

# Approach

With this program I thought to start with 3 classes, which the class BankTransaction has the functionality of to make a deposit and a withdrawal, and once completed the transaction add a description into a list.
With the class BankStatement has the functionality of adding the transactions in a list and able to print that list.
The class BankAccount, is the class that I thought wasn't really necessary, because it held only the balance. I wanted that could have the possibility to print the statement, but I had a problem with the tests even if in the REPL was working correctly, so I just let the BankStatement having that functionality.
