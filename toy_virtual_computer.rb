

#!/usr/bin/env ruby 

=begin
*********************************************************************************************************
Author: Nyasha Pride Masamba

Based on the lessons from Codecademy at https://www.codecademy.com/learn/ruby

This Ruby program is a toy virtual computer that can store data and behaviours as independent objects.
A class called Computer is created, then from that class we create instances (objects) that can 
manipulate imaginary files for us.

An example of the code input and output is shown below.
INPUT
N/A - the values were hard-coded into the classes and objects
OUTPUT
A new file called myfirstfile.txt was created by DeSamba at 2016-09-14 20:16:02 +0000
A new file called guest_terminal_script.bin was created by GuestAcc at 2016-09-14 20:16:02 +0000
End of process. Session users: {"DeSamba"=>"pasiwedhi", "GuestAcc"=>"12345"}

Ruby concepts learnt during this coding exercise: 
- The concept of classes as blueprints and objects as instances of classes
- Implementation of a Ruby class with its data (variables) and behaviours (methods)
- Using Ruby datetime libraries to return current system time
- The difference between class and instance variables; and between class and instance methods

Possible improvements to this program:
- What if you add a method that updates files? Or deletes them? 
- What if you want to add additional parameters to the initialize and create methods?

**********************************************************************************************************
=end


class Computer
   @@users = {}
   
   def initialize(username, password)
       @username = username
       @password = password
       @files = {}
       @@users[username] = password
   end
   
   def create(filename)
       time = Time.now
       @files[filename] = time
       puts "A new file called #{filename} was created by #{@username} at #{time}"
   end
   
   def Computer.get_users
      return @@users 
   end
   
end

my_computer = Computer.new("DeSamba", "pasiwedhi")
guest_computer = Computer.new("GuestAcc", "12345")

my_computer.create("myfirstfile.txt")
guest_computer.create("guest_terminal_script.bin")

puts "End of process. Session users: #{Computer.get_users}"