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

#1. Initial Solution

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
# We decided to use a hash because we thought it would be easier to compare the hash values to see which was repeated and which was not.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Our pseudocode for this problem was much better than last. Like most things it seems with this set up everything seems to get a bit more developed the more I continue.

# What issues/successes did you run into when translating your pseudocode to code?
# We had a slight issue when it came down to just getting the hash value for comparison.  The way we had it set up initially we were getting both the key/value.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# Values.max was really the only new method we used while trying to solve this.  We tried to stay away from methods that were to complicated and settled on something that we thought was as simple and straightforward as possible.
