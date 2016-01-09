# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin
# For destructive method:
compare the length of the array to the min_size value
IF length of the array less than min_size value, append the differnce of length and min_size times the value

# For non-destructive method:
create a copy of the array,  
compare the length of the array to the min_size value
IF length of the array less than min_size value, append the differnce of length and min_size times the value to new array
return the new array
=end



# What is the input? the array, the min_size array length and a padding value
# What is the output? (i.e. What should the code return?) none for the destructive, an array for the non-destructive
# What are the steps needed to solve the problem? See above



# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  if (array.length < min_size) 
    (min_size - array.length).times { array.push(value) }
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
  if (new_array.length < min_size) 
    (min_size - new_array.length).times { new_array.push(value) }
  end
return new_array
end
=end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if (array.length < min_size) 
    (min_size - array.length).times { array.push(value) }
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
  if (new_array.length < min_size) 
    (min_size - new_array.length).times { new_array.push(value) }
  end
return new_array
end



# 4. Reflection
=begin
Q: Were you successful in breaking the problem down into small steps?
A: We were indeed succesful in breaking down the problem into 3 easy steps.

Q: Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
A: The challenge was pretty straightforward and as such we didn't have any
major issues besides typos and forgetting to change the array names.

Q: Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
A: Our initial solution did not pass the test the first try. It was because
we weren't explicitly returning the array for rspec.

Q: When you refactored, did you find any existing methods in Ruby to clean up your code?
A: Our initial and our refactored solutions are one and the same. We didn't feel
we needed to refactor in this particular case.

Q: How readable is your solution? Did you and your pair choose descriptive variable names?
A: Our solution is very easily readable. We chose names that are easy to discern. They are
array and new_array.

Q: What is the difference between destructive and non-destructive methods in your own words?
A: Destructive is modification of the existing array or hash, while non-destructive creates
a new instance on which to apply the modifications.
end