puts "Please enter your first name."

first_name = gets.chomp

puts "Please enter your middle name."

middle_name = gets.chomp

puts "Please enter your last name."

last_name = gets.chomp

puts "Hi there, " + first_name + " " + middle_name + " " + last_name + "! I'm very please to meet you!"

puts "Now, please tell me what your favorite number is."

favorite_number = gets.to_i
bigger_better = favorite_number + 1

puts favorite_number.to_s + " is nice, but " + bigger_better.to_s + " is bigger and better!"

#How do you define a local variable?
#A local variable is defined by typing the name proceeded by an "=" symbol and the data to be held.

#How do you define a method?
#A method can be defined as follows:
#def NAME_OF_METHOD
#   DO_THINGS
#end

#What is the difference between a variable and a method?
#I like to think of variables as like nouns and methods as verbs. Variables contain pieces of information to be used or acted on later and methods actually "do" things.

#How do you run ruby program from the command line?
#Running a ruby program from the command line is as simple as "ruby NAME_OF_FILE"

#How do you run an RSpec file from the command line?
#Running an RSpec file from the command line is just as simple as running a ruby program, "rspec NAME_OF_FILE"

#What was confusing about this material? What made sense?
#I didn't think there was too much confusing stuff about this material. Most of it made sense and only really had trouble with the "address" part of the section. I kept trying to "puts" the output rather than "return" it.