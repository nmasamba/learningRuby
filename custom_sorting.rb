#!/usr/bin/env ruby 

=begin
*********************************************************************************************************
Author: Nyasha Pride Masamba

Based on the lessons from Codecademy at https://www.codecademy.com/learn/ruby

This Ruby program uses a custom-built method to order array of the same data type (in this case, numbers) 
in both ascending and descending order. Given that the .sort method could not sort items in reverse
alphabetical order, we create a custom method called alphabetize() which has the capability of sorting in
both ascending and descending order.

An example of the code input and output is shown below.
INPUT
numbers = [3, 1, 5, 8, 10, 2]
OUTPUT
Ascending: [1, 2, 3, 5, 8, 10]
Descending: [10, 8, 5, 3, 2, 1]

Ruby concepts learnt during this coding exercise: 
- Function definition and function calls in Ruby
- Utilising functions in the standard Ruby language to build advanced custom methods
- The subtle difference between a function's arguments and its parameters
- Abstracting functionality for reuse and for program simplification

**********************************************************************************************************
=end

def alphabetize(arr, rev=false)
    if rev == true
        return arr.reverse! {|i, j| j <=> i}
    else 
        return arr.sort! {|i, j| i <=> j}
    end
end

numbers = [3, 1, 5, 8, 10, 2]

puts "Ascending: #{alphabetize(numbers)}"
puts "Descending: #{alphabetize(numbers, true)}"