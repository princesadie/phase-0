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