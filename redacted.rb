#!/usr/bin/env ruby 

=begin
*********************************************************************************************************
Author: Nyasha Pride Masamba

Based on the lessons from Codecademy at https://www.codecademy.com/learn/ruby

This Ruby program is an elementary encryption algorithm which hides a word specified by the user from a 
given piece of text. The user feeds a block of text to the console then subsequently specifies a word
which they wish to hide from that text when it is printed back onto the console. The word specified is
replaced by the word 'redacted', a word commonly used by intelligence personnel to show that a file has 
classified or hidden information. Just like that, this program makes you a mini spy!

An example of the code input and output is shown below.
Text from the CTU intel file: 
 this is the text
Applying encryption for word: 
 text
this is the REDACTED ["this", "is", "the", "text"]

Ruby concepts learnt during this coding exercise: 
- The split() method in Ruby which seperates a block of text into seperate words based on a given delimiter
- Ruby arrays 
- Iteration on Ruby arrays, for example using the .each loop
- Further string manipulation and concatenation

Potential improvements:
- What could you do to make sure your redactor redacts a word regardless of whether it's upper case or lower case?
- How could you make your program take multiple, separate words to REDACT?
- How might you make a new redacted string and save it as a variable, rather than just printing it to the console?
**********************************************************************************************************
=end


puts "Text from the CTU intel file: "
text = gets.chomp
text.downcase!
puts "Applying encryption for word: "
redact = gets.chomp
redact.downcase!

words = text.split(" ")

words.each do |word|
    if word == redact 
        print "REDACTED "
    else 
        print word + " "
    end
end
