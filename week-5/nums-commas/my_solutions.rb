# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
## The input is a random integer.
# What is the output? (i.e. What should the code return?)
## The output should be the same integer except includes properly placed commas.
# What are the steps needed to solve the problem?
## Step 1: Determine the length of the input.
## Step 2: Count every 3 from the rear if length is greater than 4 and place comma.
## Step 3: Return input with commas.


# 1. Initial Solution
=begin
def separate_comma(num)
	f = num.to_s
	if f.length > 3
		if f.length <= 4
			f.reverse.insert(1,",")
		elsif f.length > 4 && f.length <= 5
			f.reverse.insert(2,",")
		elsif f.length > 5 && f.length <= 6
			f.reverse.insert(3,",")
		elsif f.length > 6 && f.length <= 7
			f.insert(1,",").insert(5,",")
		elsif f.length > 7 && f.length <= 8
			f.insert(2,",").insert(6,",")
		end
	else
		return f
	end
end
=end
# 2. Refactored Solution

def separate_comma(num)
	i = num.to_s.size
	if i <= 3
		return num.to_s
	elsif i >= 4 && i <= 6
		return num.to_s.reverse.insert(3,',').reverse
	elsif i >= 7 && i <=9
		return num.to_s.reverse.insert(3,',').insert(7,',').reverse
	end
end


# 3. Reflection
=begin
Q: What was your process for breaking the problem down? What different approaches did you consider?
A: My process was quite straight forward. I decided I'd initially count how many characters were
in a given attept and use that number to find the location of my commas. I considered using a
switch or case statement as my first attempt had so many conditions, but settled on a shortened
version of my initial solution.

Q: Was your pseudocode effective in helping you build a successful initial solution?
A: Yes, it helped to keep my path clear and stopped me from deviating and falling into a tangent.
It's something I'm prone to doing.

Q: What new Ruby method(s) did you use when refactoring your solution? Describe your experience of 
using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly 
change the way your code works? If so, how?
A: I didn't exactly use new Ruby methods as I had a very difficult time trying to implement methods like
'.gsub', '.sub', '.scan', and a few others without using regular expressions. From my understanding of
the instructions, we were advised against using regex and to focus on logic. This is precisely what I aimed 
to do.

Q: How did you initially iterate through the data structure?
A: Using a set of if/else statements dependent upon the number of characters within the argument.

Q: Do you feel your refactored solution is more readable than your initial solution? Why?
A: I feel it's definitely more readable than my initial solution, although I Know that it could be better.
I have another way to improve it even more, but it involves using regex.

	
=end