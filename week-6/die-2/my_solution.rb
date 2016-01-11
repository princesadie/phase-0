# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution
=begin
class Die
  def initialize(labels)
  	@count = 0
    @array = labels
  	if labels.size > 0
  		@count = labels.size
  	else
  		raise ArgumentError.new("Need an array as the argument")
  	end
  end

  def sides
  	return @count
  end

  def roll
    return @array.sample
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
    @count = labels.size
    @array = labels
    if @count <= 0
      raise ArgumentError.new("Need an array as the argument")
    end
  end

  def sides
    return @count
  end

  def roll
    return @array.sample
  end
end

# Reflection
=begin
Q: What were the main differences between this die class and the last one you created 
in terms of implementation? Did you need to change much logic to get this to work?
A: It's almost identical in logic with the only exception being that my roll has been 
replaced with a random element and is now initialized with an array.

Q: What does this exercise teach you about making code that is easily changeable or modifiable? 
A: I could've done all of this within one method, but portioning it out into separate
methods allowed me to easily add in this new feature.

Q: What new methods did you learn when working on this challenge, if any?
A: I learned about ".sample" method to pull a random element from an array.

Q: What concepts about classes were you able to solidify in this challenge?
A: Creating a new object from a class and using instance variables to easily
pass things between methods within a class.
=end