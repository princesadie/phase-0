#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode
=begin

DEFINE 'NameData' class
	INITIALIZE @name
	SET ATTR for @name

DEFINE 'Greetings' class
	INITIALIZE an instance of 'NameData' class
	DEFINE 'hello' method
		PRINT salutation to console, insert @name


=end
# Input:
# Output:
# Steps:

class NameData
	attr_reader :name

	def initialize
		@name = "Prince"
	end
end


class Greetings
	def initialize
		@first = NameData.new
	end

	def hello
		puts "Hello #{@first.name}, how are you today?"
	end
end

greet = Greetings.new
greet.hello



# Reflection
=begin
=============RELEASE 1
Q: What are these methods doing?
A: 'initialize' creates three instances vars. @age contains an integer and the other two containing strings.
   'print_info' prints to the screen usings puts the three instance vars from 'init'
   'what_is_age' returns @age
   'change_my_age' sets @age to new_age
   'what_is_name' returns @name
   'change_my_name' sets @name to new_name
   'what_is_occupation' returns @occupation
   'change_my_occupation' sets @occupation to new_occupation

Q: How are they modifying or returning the value of instance variables?
A: The instance vars are implicitly returned and the values are modified by feeding the new arguments into
   the methods and simply setting the instance vars equal to the new vars.

=============RELEASE 2
Q: What changed between the last release and this release?
A: The 'what_is_age' method has been replaced with attr_reader.

Q: What was replaced?
A: The 'what_is_age' method.

Q: Is this code simpler than the last?
A: Yes, for sure. The three lines occupied by 'what_is_age' method has been condensed into one.

=============RELEASE 3
Q: What changed between the last release and this release?
A: Two things. The 'change_my_age' method is now an attr_write and '.age' can now be used to update @age.

Q: What was replaced?
A: The 'change_my_age' method

Q: Is this code simpler than the last?
A: In some ways I feel that it is. But since attrs are new to me, it's still somewhat ehhh.

=============REFLECTION
Q: What is a reader method?
A: A reader method gives something of a 'universal' read access to an instance var.

Q: What is a writer method?
A: Similar to a reader method above, but gives write access.

Q: What do the attr methods do for you?
A: It provides read and write access to instance vars without having to define each vars within their
own separate methods after they're initialized.

Q: Should you always use an accessor to cover your bases? Why or why not?
A: Not necessarily. Giving too much access may allow for unintended changes to variables. It'd make 
debugging much more of a headache with methods changing your vars all over the place.

Q: What is confusing to you about these methods?
A: Nothing too terribly confusing. I had more trouble with implementation rather than understanding.
I kept forgetting to initialize my vars in the first and thought that I was using attrs wrong.

	
=end