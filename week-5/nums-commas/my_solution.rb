# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A number
# What is the output? The input with proper comma placing
# What are the steps needed to solve the problem? Take the number(input) convert it to a string, then reverse it(1000 -> 0001). Take 3 of the characters converted to an array([0,0,0]) then add a comma and combine the arrays.  In this case with 1000 its a bit short, and keep going until it reaches the end.

# 1. Initial Solution

# I struggled trying to not use new ruby methods after working through the group research project and trying to chain enumerators in the pad_array challenge. Ultimately it seemed like this was the most efficient way to get it to work with only calling .map! and .join as methods.  Both of which I read through in ch. 10 of Well Grounded.

def separate_comma(number)
  numbergroup = number.to_s.chars.reverse.each_slice(3).to_a
  numbergroup.map!(&:join)
  finalanswer = numbergroup.join(",").reverse
  return finalanswer
end


# 2. Refactored Solution

def separate_comma(number)
  number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# Not sure if it was luck, but from first reading the challenge I knew from the start I wanted to reverse the numbers and work from the end.  If it started with the end I could find a way to grab 3 numbers at a time, and add a comma then when I couldn't get 3 numbers, that would be the end of my work.  What was difficult was trying to figure out the ruby methods and how to use them.  The rubydoc wording and explanation feels very difficult to read most of the time.

# Was your pseudocode effective in helping you build a successful initial solution?
# Very.  This entire week has been extremely dependant on my pseudocode.  I've been struggling most of the week with ruby semantics, but have been able to get a pretty good idea of what my challenges are supposed to acheive through writing it out.  Once I have an input and an output I am fairly confident in my ability to at least describe what needs to be done.  From there I can usually find a method via research which will help me do it.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# My research began at the ruby docs and soon gravitated towards google.  A lot of the definitions on the rubydocs go over my head.  I found myself finding methods I thought might work and looking for better descriptions of how to apply each method.  For instance .map! and :join.  When I found those methods I was not sure how to apply them because of the notation.  With some research I found that '&' converts the argument a method can receive.  Map usually accepts a block argument, but with & you can save time by condensing with &.

# How did you initially iterate through the data structure?
# I used .each in both instances.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# To me no I actually think the refactored answer is harder to read because it's a long string of enumerators and methods.  It looks like one long run on sentance.  The initial solution may not be as efficient but it's easier for me to read from top to bottom than on long line of code.