# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Random string from input array
# Steps:


# Initial Solution

class Die

  def initialize(labels)
    raise ArgumentError, 'You must provide at least one label.' if labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(0..sides-1)]
    # @labels.sample
  end
end

# my_die = Die.new(['a','b','c','d','e'])
# p my_die.sides
# p my_die.roll


# Refactored Solution
class Die

  def initialize(labels)
    raise ArgumentError, 'You must provide at least one label.' if labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    # @labels[rand(0..sides-1)]
    @labels.sample
  end
end







# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The logic felt largely the same as the previous challenge.  The only real difference was that an array needed to be passed in as input.  Not much of the logic at all was changed, I really just cleaned up my instance variable usage and error message.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# I won't lie, I basically took the same code I had from the previous challenge and started editing to fit rather than starting fresh.  It made working way faster and much more efficient.  That said, it seems extremely useful to have easily adaptable code to save time.

# What new methods did you learn when working on this challenge, if any?
# I used .empty? for the first time in the ArgumentError portion to see if the array passed as labels was empty, and if it was to raise the error.

# What concepts about classes were you able to solidify in this challenge?
# I spent some time with a guide going over instance variable usage, and calling classes for testing in order to clarify the challenge and subject in general.  By really solidifying how to call my method at the end and test it I was able to see where I may have been going wrong and remedy it ahead of time.  We also spoke about defining instance variables in one place rather than in each method so that code seemed less disjointed.  If I needed to find an instance variable because of an issue I could just go right to initialize to see where the problem was.