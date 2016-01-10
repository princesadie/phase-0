
# Calculate the mode Pairing Challenge
# I worked on this challenge [with: Ian Kinner ]

# I spent [0.45] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of integers or strings
# What is the output? (i.e. What should the code return?) Array of most frequent values
# What are the steps needed to solve the problem?
=begin

Step 1 Iterate through the array

Step 2 Increment the value of a hash key that relates to the element

Step 3 Create another array, mode.

Step 4 Find the max value of the hash values. For that max value, if the hash value matches the max then push the hash key to the new array mode.

=end

# 1. Initial Solution
=begin
def mode(array)
  counter = Hash.new(0)
  array.each do |x|
    counter[x] += 1
  end

  result = []
  sorted = Hash[counter.sort {|a,b| b[1]<=>a[1]}]
  max = sorted.values[0]
  sorted.each do |k,v|
    if v == max
      result << k
    end
  end
  return result
end
=end



# 3. Refactored Solution
def mode(array)
  counter = Hash.new(0)
  array.each do |x|
    counter[x] += 1
  end

  result = []
  sorted = Hash[counter.sort {|a,b| b[1]<=>a[1]}]
  max = sorted.values[0]
  sorted.each do |k,v|
    result << k if max == v
  end
  result
end

# 4. Reflection
=begin
Q: Which data structure did you and your pair decide to implement and why?
A: We used both arrays and hashes in our code, but returned an array as the final result.
At the top of the code we used a hash to create a "counter" from which we could determine
our max value. From there we created our final array that would hold the key(s) matching
the max value.

Q: Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
A: Paired with the same person for this challenge and we had no issues at all. We worked very well
and only encountered a few minor issues.

Q: What issues/successes did you run into when translating your pseudocode to code?
A: We initially had issues with cycling through our sorted hash, but for the most part
didn't have any problems translating our pseudocode into code.

Q: What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
A: We used ".each", ".values", and ".sort" to get through this challenge. We've both had experience
with these methods and didn't have too much of hard time implementing. One issue we had was sorting the hash.
We first attempted to sort it as you would an array, but after my partner looked into it realized we had
to wrap our sort into a hash[].


  
=end