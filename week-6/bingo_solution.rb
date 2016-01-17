# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Define an array of B,I,N,G,O and take a random string from it.  Define a variable that takes a random number from 1-100.

# Check the called column for the number called.
  # set bingo_board to a new array and check to see if random number is located within array.

# If the number is in the column, replace with an 'x'
  # IF the number is included in the array, change the number to an X.  ELSE make it that number.

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #find a resource that will format array output.  .inspect is ok, but something better.

# Initial Solution

class BingoBoard
  require 'pp'

  def initialize(board)
    @bingo_board = board
  end

  def num_letter
    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)
  end

#   def print_column   print column not mentioned in challenge but mentioned here?
#     @bingo_board.each do |col|
#       if col.index = 0
#         pp col
#       end
#     end
#   end

  def check
    num_letter
    @bingo_board.each do |num|
      index = num.index(@number)
      num[index] = 'X' unless index.nil?
      # if num.include?(@num_letter)
      #   num.map!{|x| x == @num_letter ? 'X' : x}
      # else
      #   num
      # end
    end
    p @letter
    p @number
    pp @bingo_board
  end
end



new_game = BingoBoard.new([[47, 44, 71, 8, 88],
               [22, 69, 75, 65, 73],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]])
new_game.check
# Refactor

class BingoBoard
  require 'pp'

  def initialize(board)
    @bingo_board = board
  end

  def num_letter
    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)
  end

  def check
    num_letter
    @bingo_board.each do |num|
      index = num.index(@number)
      num[index] = 'X' unless index.nil?
    end
    pp @bingo_board
  end
end

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Psuedocoding wasnt so bad for this challenge. I would say that the logic or idea of how to solve the problem was pretty simple, but applying it the exact why I thought would work was difficult.

# What are the benefits of using a class for this challenge?
# It makes the code more readable.

# How can you access coordinates in a nested array?
# Iteration and conditionals.  By looking at the values of the indexes in the array you can determine whether or not the coordinates are the correct values.

# What methods did you use to access and modify the array?
# I used .index to evaluate the value at each array index.  I also attempted to make .map! work to assign the values to a new array, but couldn't get it to work right ultimately when it came to outputting an X in the right place.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# In this exercise I did not use any new methods but I did discover the PP library.  I'm not sure if this is acceptable or is beyond the intent of the challenge but it was enormously useful.  With some brief google research I found out its application pretty easily.  Not completely sure on what it does techincally but it makes my bingo board beautiful.  All thats needed is that you require the PP library within your class, and then when you print something you do so with 'pp'.

# How did you determine what should be an instance variable versus a local variable?
# The only things that needed to be accessed throughout the solution other than the board were the random number/letter that was generated.  Having the board assigned to an instance variable seemed like a no brainer but being able to compare the random letter(b,i,n,g,o) with a random number seemed the most important.

# What do you feel is most improved in your refactored solution?
# My refactoring in general still needs work.  I find myself trying to refactor as I go instead of leaving what I have and continuing through.  I find that I'm looking for easier ways to do whatever I'm doing constantly knowing that the rubydocs are so robust.  It's hard for me to think of a solution without thinking the rubydocs probably has a less keystroke dependant method.  Im stuck in the mindset of 'DRY' and thinking there must be an easier solution every time I start.
