# Calculate the mode Pairing Challenge

# I worked on this challenge with Mike Pintar.

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An Array of numbers of strings.
# What is the output? An array of the most frequent values.
# What are the steps needed to solve the problem?
=begin

Iterate through the array and count the instance of each object.
-create a new Hash
-add each object in the array as a key
-add one to the value of the key if it repeats
Identify the largest value or values.
Create an array from the values of the most occurring object or objects.
Return said array.

=end


# 1. Initial Solution

def mode (array)
  newhash=Hash.new
  array.each do |x|
    newhash[x] = newhash[x].to_i + 1
  end

  modevalue = newhash.values.max
  modearray= Array.new
  newhash.each do |x, y|
    if y == modevalue
      modearray.push(x)
    end
  end
  modearray
end

# Which data structure did you and your pair decide to implement and why?


# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?


# What issues/successes did you run into when translating your pseudocode to code?


# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

