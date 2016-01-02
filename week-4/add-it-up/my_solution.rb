# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution

#solution
def total(array)
	sum = 0
	array.each { |x| sum += x}
	return sum
end

def sentence_maker(array)
	sentence = ""
	array.each { |x| sentence = sentence + x.to_s + " " }
	sentence[0] = sentence[0].upcase
	sentence = sentence.rstrip
	sentence = sentence + "."
	return sentence
end