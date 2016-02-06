# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
=begin

DEFINE method 'in_words', takes one argument (integer)
	CREATE hash 'numbers', list all needed number-word pairs
	CREATE var 'word'
	ITERATE over 'numbers'
		FIND MATCH
		SET EQUAL to 'word'
	PRINT 'word'

=end


# Initial Solution

# def in_words(integer)
# 	numbers = {
# 		1000 => "thousand",
# 		100 => "hundred",
# 		90 => "ninety",
# 		80 => "eighty",
# 		70 => "seventy",
# 		60 => "sixty",
# 		50 => "fifty",
# 		40 => "forty",
# 		30 => "thirty",
# 		20 => "twenty",
# 		19=>"nineteen",
# 		18=>"eighteen",
# 		17=>"seventeen", 
# 		16=>"sixteen",
# 		15=>"fifteen",
# 		14=>"fourteen",
# 		13=>"thirteen",              
# 		12=>"twelve",
# 		11 => "eleven",
# 		10 => "ten",
# 		9 => "nine",
# 		8 => "eight",
# 		7 => "seven",
# 		6 => "six",
# 		5 => "five",
# 		4 => "four",
# 		3 => "three",
# 		2 => "two",
# 		1 => "one",
# 		0 => ""
# 	}

# 	word = ""

# 	if numbers.has_key?(integer)
# 		word = numbers[integer]
# 	elsif integer > 99 && integer < 1000
# 		word = numbers[integer/100] + " " + "hundred" + " " + numbers[integer - ((integer/100) * 100) - (integer % 10)] + " " + numbers[integer % 10]
# 	elsif integer > 1000
# 		word = numbers[integer/1000] + " " + "thousand" + " " + numbers[(integer - ((integer/1000) * 1000) - (integer % 100))/100] + " " + "hundred" + " " + numbers[(integer % 100) - (integer % 10)] + " " + numbers[integer % 10]
# 	else
# 		word = numbers[integer - (integer % 10)] + " " + numbers[integer % 10]
# 	end

# 	puts word

# end

# Refactored Solution

def in_words(integer)
	numbers = {
		1000 => "thousand",
		100 => "hundred",
		90 => "ninety",
		80 => "eighty",
		70 => "seventy",
		60 => "sixty",
		50 => "fifty",
		40 => "forty",
		30 => "thirty",
		20 => "twenty",
		19 => "nineteen",
		18 => "eighteen",
		17 => "seventeen", 
		16 => "sixteen",
		15 => "fifteen",
		14 => "fourteen",
		13 => "thirteen",              
		12 => "twelve",
		11 => "eleven",
		10 => "ten",
		9 => "nine",
		8 => "eight",
		7 => "seven",
		6 => "six",
		5 => "five",
		4 => "four",
		3 => "three",
		2 => "two",
		1 => "one",
		0 => ""
	}

	word = ""
	if integer == 0
		word = "zero"
	elsif numbers.has_key?(integer)
		word = numbers[integer]
	elsif integer > 99 && integer < 1000
		word = numbers[integer/100] + " " + "hundred" + " " + numbers[integer - ((integer/100) * 100) - (integer % 10)] + " " + numbers[integer % 10]
	elsif integer > 1000
		if (integer - ((integer/1000) * 1000) - (integer % 100))/100 == 0
			word = numbers[integer/1000] + " " + "thousand" + " " + numbers[(integer - ((integer/1000) * 1000) - (integer % 100))/100] + numbers[(integer % 100) - (integer % 10)] + numbers[integer % 10]
		else
			word = numbers[integer/1000] + " " + "thousand" + " " + numbers[(integer - ((integer/1000) * 1000) - (integer % 100))/100] + " " + "hundred" + " " + numbers[(integer % 100) - (integer % 10)] + numbers[integer % 10]
		end
	else
		word = numbers[integer - (integer % 10)] + " " + numbers[integer % 10]
	end

	puts word

end

#DRIVER CODE
in_words(10104)
in_words(10000)
in_words(3423)
in_words(1004)
in_words(110)
in_words(35)
in_words(156)
in_words(104)
in_words(100)
in_words(300)
in_words(1)
in_words(10)
in_words(0)
in_words(4)

#REFLECTION
=begin
Q: What concepts did you review in this challenge?
A: Accessing hashes. This challenge was a headscratcher. I sat there for a good
   30 minutes before writing a single line of code. Unfortunately my pseudocode
   was sorely lacking after I broke ground, but I managed to get through it with
   trial and error. Lots of trial and error. I also reviewed basic math... Interestingly
   enough I think this has been the most math I've used thus far.

Q: What is still confusing to you about Ruby?
A: It isn't so much what's confusing as I have trouble getting started given a blank page.
   It's always easier for me to get started when given a bit to start with even if I end up
   throwing most or all of the starter code away.

Q: What are you going to study to get more prepared for Phase 1?
A: I'm going to keep doing more challenges just to keep things fresh till Monday.
=end