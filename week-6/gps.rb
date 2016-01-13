# Your Names
# 1) Prince Sadie
# 2)

# We spent [1.2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"pie" => 7, "cake" =>  5, "cookie" => 1}
  error_counter = 0

  library.each do |food|
    if !library.include?(item_to_make)
      error_counter += 1
    end
  end
=begin
Establishing library (hash) and error_counter (var)
That block iterates through library to find a match, if no matches are found subtract 1 from error_counter  
=end
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=begin
If error_counter is greater than zero, put up that argumenterror
=end
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  suggested_items = Hash.new(0)
  replacement = remaining_ingredients
  library.each do |food, number|
    if replacement > 0
      i = (replacement / number)
      if i > 0
        suggested_items[food] = i
        replacement -= number
      end
    end
  end

  case remaining_ingredients
  when 0
    puts "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    puts "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: "
    suggested_items.each do |food, number|
      puts "#{number} of #{food}."
    end
  end
=begin
Creates two variables, serving_size and remaining_ingredients
Switch statement to return one of two cases depending the value of remaining_ingredients
=end
end

p serving_size_calc("pie", 13)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 2)
p serving_size_calc("cake", 21)
p serving_size_calc("cookie", 100)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
Q: What did you learn about making code readable by working on this challenge?
A: I learned that proper naming of variables and arguments really helps out a lot
especially when the code starts getting larger and larger. Also writing things in such
a way to make them intuitive would be great. I had issues with the error checking and the
switch statement.

Q: Did you learn any new methods? What did you learn about them?
A: It wasn't so much as learning new methods, but reinstilling them in my head. They're still
so new to me that I have trouble recalling them and implementing them properly without using
the docs. I'm certain this'll be something I can remedy with time and experience.

Q: What did you learn about accessing data in hashes? 
A: Basically that hashes are paired as keys and values. That hashes were conceived with the idea
of not having a specific order like arrays were in earlier versions of ruby. My guide informed me of this.

Q: What concepts were solidified when working through this challenge?
A: Iteration, iteration, iteration. And accessing hashes. I realized just how important it is to
have the most used methods like ".each", ".include?", and other basic concepts of Ruby down in
order to have a better flow. I had to stop many times during the session to think about basic concepts.

  
=end
