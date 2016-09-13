
#!/usr/bin/env ruby 

=begin
*********************************************************************************************************
Author: Nyasha Pride Masamba

Based on the lessons from Codecademy at https://www.codecademy.com/learn/ruby

This Ruby program tracks the movies you've watched along with their ratings. However, its beauty lies in
the fact that you can add, delete and update the movies in your collection. You can also view information
for all the movies. These operations are collectively what is known by the acronym CRUD 
(Create, Read, Update, Delete) and they are essential in software engineering as they exist everywhere,
from API calls to web frameworks like Ruby-on-Rails.

An example of the code input and output is shown below.
OUTPUT
What would you like to do?
-- Type 'add' to add a movie.
-- Type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' to delete a movie.
INPUT 
 add
OUTPUT
Title of movie to be added: 
INPUT 
 Wired 23
OUTPUT
Rating of movie to be added: 
INPUT 
 3
OUTPUT
Wired 23 has been added with a rating of 3.

Ruby concepts learnt during this coding exercise: 
- How to perform CRUD operations on a Ruby hash interactively through the console
- Utilising the case statement in Ruby
- Ruby symbols (basic ruby objects which exist as strictly named identifiers; more efficient than strings)
- Conversion of strings to symbols using .to_sym or .intern

**********************************************************************************************************
=end

movies = {
  Wall Street: 3,
  Pirates: 4,
  Piranha: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp.downcase

case choice
when 'add'
    puts "Title of movie to be added: "
    title = gets.chomp
    puts "Rating of movie to be added: "
    rating = gets.chomp
    if movies[title.to_sym].nil?
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}."
    else 
        puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
    puts "I don't understand why you are trying to abuse me. I'm just an app!"
end