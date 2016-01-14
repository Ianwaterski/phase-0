# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer
# Output: A comparison as to whether or not the input is higher, lower, or correct based on a random integer.
# Steps: Write a class that accepts an integer (guess) as an input.  It will then compare the input against a randomly generated number(answer).  IF the number is higher than the answer it will return Too high, if lower, it will return too low.  This will continue until the correct answer is reached.


# Initial Solution

class GuessingGame
  attr_reader :answer
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess.to_i > @answer
      @solved = false
      return :high
    elsif guess.to_i < @answer
      @solved = false
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    if @solved
      @solved = true
    else
      @solved = false
    end
  end

end


# new = GuessingGame.new(10)
# p new.guess(8)





# Refactored Solution






# Reflection