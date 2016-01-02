# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Baron Kwan].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of the numbers in the array
# Steps to solve the problem.
# Use .each method to iterate through array and sum the numbers

# 1. total initial solution

#def total(numbers)
#  sum_of_total = 0
#  numbers.each do |x|
#    sum_of_total = x + sum_of_total
#  end

#  return sum_of_total

#end

# 3. total refactored solution

def total(numbers)
  sum_of_total = 0
  numbers.each do |x|
    sum_of_total = x + sum_of_total
  end
  sum_of_total
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of string
# Output: Combined strings
# Steps to solve the problem.


# 5. sentence_maker initial solution
#def sentence_maker(words)
#  combined_strings = ""
#  words.each do |x|
#    combined_strings = combined_strings + " " + x.to_s
#  end
#  combined_strings.strip.capitalize + "."
#end

# 6. sentence_maker refactored solution

def sentence_maker(words)
  combined_strings = ""
  words.each do |x|
    combined_strings += " " + x.to_s
  end
  combined_strings.strip.capitalize + "."
end
