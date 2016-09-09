#!/usr/bin/env ruby 

=begin
*********************************************************************************************************
Author: Nyasha Pride Masamba

Based on the lessons from Codecademy at https://www.codecademy.com/learn/ruby

This Ruby program delves into more advanced ways of manipulating user strings in real time in order to 
produce modified output. To be specific, every time the user inputs a string with the letter 's' into 
the console, the program will replace that letter with the letters 'th'. Hence, in the end, every word in
the user's string with an s will sound like it has been said by the cartoon character Daffy Duck.

Ruby concepts learnt during this coding exercise: 
- String modification 'in place' using bang ! symbol
- Conditional branching with the if-else construct
- Boolean Ruby methods that end with ? which evaluate either to true or false (e.g. <string>.include? <condition>)
- The gsub (global substitution) method which replaces a given string instance with another

Potential improvements:
- Add an additional if statement to re-prompt the user for input if they don't enter anything
- Think about how you might account for words in which the letter "c" sounds like an "s"
- Think about how you might preserve the user's original capitalisation
- Consider how the modified string would look/sound if original string has multiple "s" instances e.g. discuss
**********************************************************************************************************
=end


print "String to be Daffy Duck-ified: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "Daffy Duck says #{user_input}! "
else 
    print "That's literally all, folks!"
end