puts "What's your first name?"

first_name = gets.chomp

puts "What's your last name?"

last_name = gets.chomp
name_length = first_name.length + last_name.length

puts "Did you know you have " + name_length.to_s + " letters in your full name?"