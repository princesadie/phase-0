# Your Names
# 1) Prince Sadie
# 2)

# We spent [#] hours on this challenge.

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

