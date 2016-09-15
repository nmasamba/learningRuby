#!/usr/bin/env ruby 

=begin
*********************************************************************************************************
Author: Nyasha Pride Masamba

Based on the lessons from Codecademy at https://www.codecademy.com/learn/ruby

This Ruby program mimics a checking account. We're just using banking as an example because it's a nice 
real-world analogy. This isn't for real banking, so don't use any real banking information! The program
can open a new account, allow withdrawals (given the correct PIN) and display the bank balance after a
transaction. It also hides pin numbers stored in the system (from users) and denies access if the PIN
turns out to be incorrect.

An example of the code input and output is shown below.
INPUT (HARD-CODED)
checking_account.withdraw(11, 500_000)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 500_000)
checking_account.display_balance(1234)

OUTPUT (respectively)
Access denied: incorrect PIN.
Balance: $20000000.
Withdrew 500000. New balance: $19500000.
Balance: $19500000.

Ruby concepts learnt during this coding exercise: 
- Optional parameters during method definition
- Use of underscores with numbers in Ruby e.g. 2_000_000 (two million) making big numbers easier to read
- The use of private methods to hide information from other parts of the program
- Creating child classes from parent classes, inheritance and polymorphism

Possible improvements to this program:
- Include a deposit method that lets users add money to their accounts
- Include error checking that prevents users from overdrawing their accounts
- Create CheckingAccounts or SavingsAccounts classes that inherit from Account

**********************************************************************************************************
=end


class Account
    attr_reader :name, :balance
    
    def initialize(name, balance = 100)
       @name = name
       @balance = balance
    end
    
    def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    
    def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
    end
    
    private
    def pin
       @pin = 1234 
    end
    
    def pin_error
       return "Access denied: incorrect PIN." 
    end
    
end


checking_account = Account.new("Mariyawanda", 20_000_000)
checking_account.withdraw(11, 500_000)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 500_000)
checking_account.display_balance(1234)


