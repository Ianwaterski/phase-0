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

# Could not find a reasonable to way refactor at the time of finishing. Feel free to leave feedback in regards to, but planning on returning to refactor after submission

# class GuessingGame
#   attr_reader :answer
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#     if guess.to_i > @answer
#       @solved = false
#       return :high
#     elsif guess.to_i < @answer
#       @solved = false
#       return :low
#     else
#       @solved = true
#       return :correct
#     end
#   end

#   def solved?
#     if @solved
#       @solved = true
#     else
#       @solved = false
#     end
#   end

# end




# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variable are terrible representations of real-world objects. We tell them what to do and they do so rigidly.  Real world people, in the realm of this guessing game, wouldn't be able to hold the value of the answer, and realistically guess until they got it.  They already know the answer because we told them to hold it.

# When should you use instance variables? What do they do for you?
# You should use instance variables any time you think you may want to access the value of said valuable outside of one method.  In the example of this challenge @solved was accessed multiple times throughout 2 methods, and @answer was accessed outside of the initialize method.  Both were very useful applications of the variable.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# The use of flow control in this challenge was very to the point.  Is the guess higher than the answer, yes then return :high.  Is it lower than the answer, yes then return :low.  If neither of those then return :correct.  The logic that was needed to set up this comparison was very simple in my opinion.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think this code requires us to return symbols because symbols have both integer and string representations.  There is also no need to define a symbol since Ruby does that for you, but also that no matter where the symbol appears in the program it will have the same value.