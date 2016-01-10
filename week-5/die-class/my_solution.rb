# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

# 0. Pseudocode

# Input: A number of sides for the object
# Output: A random number in the range to that object from 1.
# Steps: define a new class die, that accepts an input of how many sides. Once the number of sides is known it should randomly generate a number from 1...sides and output.


# 1. Initial Solution

class Die
  def initialize(sides)
      raise ArgumentError, "Die must have 1 side" unless sides > 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    @roll = rand(@sides) + 1
    return @roll
  end
end



# 3. Refactored Solution







# 4. Reflection
# What is an ArgumentError and why would you use one?
#An ArgumentError is really what it sounds like, it's an error in regards to the arguments that a method accepts.  In this challenge the example was if sides gets anything less than 1 it would give an error.  This is put in place so that the output is the result we want to achieve.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used rand for the first time.  At first I was getting errors because I didnt not realize rand starts at 0, which threw off my dice rolls.  When I read a bit deeper I realized it need to be initialized at rand + 1 to start at 1.

# What is a Ruby class?
# Ruby classes are objects that hold many methods together.  If I want to write a bunch of methods for a specific purpose I could so so in one class.

# Why would you use a Ruby class?
# Using a few methods in our applications so far has proven to be a reasonable use of time as most of our challenges have been fairly simple.  A class is the next step in code structure that allows you define a certain set of methods for a much larger scope.

# What is the difference between a local variable and an instance variable?
# A local variable is only accessible inside the method it is definied, where an instanced variable is available throughout the entire method.

# Where can an instance variable be used?
# Instance variables can be used anywhere within the class they are defined.