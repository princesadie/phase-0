# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
    DEFINE 'generate' method
      SET '@letter' equal to RANDOM letter from (a,b,c,d,e)
      SET '@number' equal to RANDOM number from (1-100)

# Check the called column for the number called.
  #fill in the outline here
    DEFINE 'check' method
      CREATE '@match' var, SET to 0
      ITERATE through '@bingo_board'
        CHECK which is current column (index) depending on letter (i.e., a would be index 0)
        CHECK IF 'number' exists in relevant index in all subarrays.
          IF 'number' exists in correct index
            SET '@match' var to 1

# If the number is in the column, replace with an 'x'
  #fill in the outline here
    DEFINE 'got_match' method
      IF '@match' equals 1
        MODIFY 'number' in 'letter' index to 'x'
        SET @match equal to 0

# Display a column to the console
  #fill in the outline here
    DEFINE 'print_column' method
      PRINT relevant index of '@bingo_board'
        EACH on separate line

# Display the board to the console (prettily)
  #fill in the outline here
    DEFINE 'print_board' method
      PRINT '@bingo_board' with each subarray in a new line
=end
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = 0
    @number = 0
  end

  def generate
    @letter = 'BINGO'[rand(5),1]
    @number = rand(0..100)
    @index = 0
    case @letter
    when 'B'
      @index = 0
    when 'I'
      @index = 1
    when 'N'
      @index = 2
    when 'G'
      @index = 3
    when 'O'
      @index = 4
    end
  end

  def check
    @bingo_board.each_with_index do |x, xi|
      x.each_with_index do |y, yi|
        if yi == @index && y == @number
          x.map! { |y| y == @number ? 'X' : y}
        end
      end
    end
  end

  def print_column
    puts @bingo_board[@letter]
  end

  def print_board
    i = 0
    puts 'B  I  N  G  O'
    while i <= 4
      p @bingo_board[i]
      i += 1
    end
    puts "Rolled #{@letter}#{@number}"
  end

  def run
    generate
    check
    print_board
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.run

#Reflection
=begin
Q: How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
A: Pseudocoding this challenge wasn't too difficult, but that may be because my pseudo is slightly flawed.
I've recently changed my pseudocoding style to match that of my most recent Guide, so I think it's much
improved since my first.

Q: What are the benefits of using a class for this challenge?
A: Easier to pass vars from method to method and also for calling a final method to run all the others.

Q: How can you access coordinates in a nested array?
A: Nested arrays can be accessed through iteration or by chaining [] (i.e i[0][0][1] would access the second element of the subarray within the very first subarray)

Q: What methods did you use to access and modify the array?
A: I used ".include?" and ".map!". The first to check for a match and the second to actually change the value.

Q: Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
A: A new method I used in this scenario is ".each_with_index" and ".rand". ".rand" simply returns a random value from the range given.
".each_with_index" takes into account the particular object to iterate over and an index as opposed to ".each" which only takes an index.

Q: How did you determine what should be an instance variable versus a local variable?
A: If I needed to use a given variable multiple times in different methods, then I made an instance variable otherwise it stayed local.

Q: What do you feel is most improved in your refactored solution?
A: I felt in terms of readability and function, my initial solution was sufficient for my MVP so I didn't further refactor in this case.
=end
 