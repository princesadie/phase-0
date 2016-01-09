# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides
# Output: Roll Number
=begin 
Steps: 1. Take a number.
	   2. Create a die with those number of sides.
       3. Store the number of sides.
       4. Give error if numbers of is equal to or less than 0.
       5. Return a random number between 1 and those number of sides when rolled.
=end
# 1. Initial Solution
=begin
class Die
  def initialize(sides)
  	if sides <= 0
  		exc
  	else
  		@sides = sides
  	end
  	if sides <= 0 then exc else @sides = sides end
  end

  def exc
  	raise ArgumentError
  end

  def sides
    return @sides
  end

  def roll
    return rand(1...@sides+1)
  end
end
=end


# 3. Refactored Solution

class Die
  def initialize(sides)
  	if (sides <= 0) then (raise ArgumentError) else (@sides = sides) end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end





# 4. Reflection
=begin
Q: What is an ArgumentError and why would you use one?
A: An ArgumentError is a notification that the arguments used are invalid.
It should be used because without a checker the program would proceed with the
invalid argument and would most likely result in incorrect results.

Q: What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
A: I used the the ".rand" method and initially had issues with it not returning the last number. This happened
because I used "(1...@sides)" rather than "(1..@sides)", the latter is inclusive of the last digit while the former
is not.

Q: What is a Ruby class?
A: A Ruby class is like a blueprint from which objects can be made and inherit from.

Q: Why would you use a Ruby class?
A: Classes are useful in that many objects can be created readily from them. The single most important thing about this
process is that these subsequent objects can then be modified and have specialties not present in the class.

Q: What is the difference between a local variable and an instance variable?
A: I think the scope is the biggest difference between local and instance vars. Local vars are only available from within
the method or block they're created in, while instance vars can be used from within the class and down from there to methods,
blocks, etc.

Q: Where can an instance variable be used?
A: From anywhere within the class, down the methods and blocks thereafter.

	
end