# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
=begin
DEFINE 'initialize' method, takes 1 argument, 'answer' (integer)
	SET 'answer' instance var equal to 'answer' argument

DEFINE 'guess' method, takes 1 argument, 'guess' (integer)
	CREATE 'status' instance var, SET to 0
	IF 'guess' is an integer
		COMPARE 'guess' with 'answer' instance var
			IF 'guess' is equal to 'answer'
				SET status equal to 1
				CALL 'solved' method
			ELSE IF 'guess' is lower than 'answer'
				SET status equal to 0
				RETURN low
			ELSE IF 'guess' is high than 'answer'
				SET status equal to 0
				RETURN high
	ELSE
		raise ArgumentError

DEFINE 'solved' method, takes 1 argument, 'status' (boolean)
	IF status is equal to 1
		RETURN true
	ELSE
		RETURN false

=end
# Input:
# Output:
# Steps:


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@status = :symbol
  	if guess.is_a?(Integer)
  		if guess == @answer
  			@status = :correct
  		elsif guess > @answer
  			@status = :high
  		elsif guess < @answer
  			@status = :low
  		end
  	else
  		raise ArgumentError.new("Please enter an integer")
  	end
  end

  def solved?
  	if @status == :correct
  		return true
  	else
  		return false
  	end
  end

end
=end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  	@status = :symbol
  end

  def guess(guess)
  	if guess.is_a?(Integer)
  		if guess == @answer
  			@status = :correct
  		elsif guess > @answer
  			@status = :high
  		elsif guess < @answer
  			@status = :low
  		end
  	else
  		raise ArgumentError.new("Please enter an integer")
  	end
  end

  def solved?
  	if @status == :correct then true else false end
  end

end


# Reflection
=begin
Q: How do instance variables and methods represent the characteristics 
and behaviors (actions) of a real-world object?
A: I view it like this, if you take a look at a lamp in the real world 
I would consider this lamp's state (on or off) as an instance variable
and the action of turning this lamp on and off as a method. 
I think it would look something like this

	class lamp
		def initialize(state)
			if state.is_a?(Integer) && (state = 1 || state = 0)
				@state = state
			else
				raise ArgumentError.new("It's either on (1) or off (o)")
			end
		end

		def power
			@state != @state
		end
	end

Q: When should you use instance variables? What do they do for you?
A: Whenever you need a variable to be accessible from anywhere within
the class. They allow for easy accessing of a var.

Q: Explain how to use flow control. Did you have any trouble using it in this challenge? 
If so, what did you struggle with?
A: Flow control is being able to select an outcome based upon a set of criterias or results.

Q: Why do you think this code requires you to return symbols? What are the benefits of using symbols?
A: Symbols are stored only once and retain their "id" throughout the life of the code. They also act
much like strings, but unlike strings are immutable, meaning they cannot be changed. From my understanding, 
this saves a lot of memory especially when programs start getting larger in scope.
=end