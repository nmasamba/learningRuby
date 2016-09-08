#!/usr/bin/env ruby 

=begin
*********************************************************************************************************
Author: Nyasha Pride Masamba

Based on the lessons from Codecademy at https://www.codecademy.com/learn/ruby

This Ruby program is a formatter which formats user input to the required format. For example, users 
usually enter their names on forms in different formats - some use lower case letters throughout, some use
upper case and of course some enter their names with just the first letter capitalised. This formatter can
help in such instances by accepting the string input from a user in whatever form the user entered it in, 
and then converting that string into a standardised piece of text before using it. In this case, the 
formatted string is subsequently printed out to the user in a sentence that summarises the data back to
the user.

Ruby concepts learnt during this coding exercise: 
- Variables in Ruby
- Standard Ruby console input and output methods such as gets.chomp and print
- Use of string manipulation methods such as capitalize and upcase
- String I/O modifiers such as the bang(!) symbol
- String interpolation using the #{variable_name} syntax
**********************************************************************************************************
=end


print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state are you from? (provide abbreviation)"
state = gets.chomp
state.upcase!

print "Your name is #{first_name} #{last_name} and you are from #{city}, #{state}! "