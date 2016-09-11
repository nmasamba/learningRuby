#!/usr/bin/env ruby 

=begin
*********************************************************************************************************
Author: Nyasha Pride Masamba

Based on the lessons from Codecademy at https://www.codecademy.com/learn/ruby

This Ruby program uses a hash data structure to create a word counter. The program takes text user
input via the console, identifies individual words, counts the frequency of each word and finally displays
the result to the user. Such a visual display of frequencies is akin to building a histogram to convey 
analytical information.

An example of the code input and output is shown below.
Text for analysis please: 
 the big bad bad wolf jumped the heck over the gate
the 3
bad 2
jumped 1
heck 1
wolf 1
over 1
big 1
gate 1
[["the", 3], ["bad", 2], ["jumped", 1], ["heck", 1], ["wolf", 1], ["over", 1], ["big", 1], ["gate", 1]]

Ruby concepts learnt during this coding exercise: 
- The hash map data structure, defined by its key-value pair structure
- The usefulness of an array of arrays
- Operations over a hash using helper methods such as .sort_by and .reverse
- Iteration over each of the items in a hash map structure
- Typecasting e.g. using .to_s to convert an integer to a string

**********************************************************************************************************
=end

puts "Text for analysis please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each {|word| frequencies[word] += 1} 

frequencies = frequencies.sort_by do |word, freq|
    freq
end
frequencies.reverse!
frequencies.each {|word, freq|
    puts word + " " + freq.to_s
}