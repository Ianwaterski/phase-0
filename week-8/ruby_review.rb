# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# Iterate through array
# Test whether each index is divisible by 3
# => #If it is replace with fizz
# Test whether each index is divisible by 5
# => #If it is replace with buzz
# Finally test whether each index is divisible by 15
# => if it is, replace with fizzbuzz


# Initial Solution

def super_fizzbuzz(array)
  new_array = []

  array.each do |x|
    if (x % 5 == 0) && (x % 3 == 0)
      new_array << "FizzBuzz"
    elsif (x % 5 == 0)
      new_array << "Buzz"
    elsif (x % 3 == 0)
      new_array << "Fizz"
    else
      new_array << x
    end
  end
  return new_array
end



# Refactored Solution

def super_fizzbuzz(array)
  new_array = []

  array.each do |x|
    if (x % 5 == 0) && (x % 3 == 0)
      new_array << "FizzBuzz"
    elsif (x % 5 == 0)
      new_array << "Buzz"
    elsif (x % 3 == 0)
      new_array << "Fizz"
    else
      new_array << x
    end
  end
  return new_array
end






# Reflection
# What concepts did you review or learn in this challenge?
# I needed a bit of a refresher across the board, I kept trying to add semi-colons throughout the code.  I had my basic iteration loop syntax and logic down it was just a matter of reorganizing my comparisons.

# What is still confusing to you about Ruby?
# Some of the aspects that were unclear initially in ruby were actually cleared up a bit by learning some Javascript.  I was able to see how iteration works a bit better through JavaScripts more literal notation and lack of built in methods.  Towards the end of Ruby I was feeling more confident but then had to move on to JS.

# What are you going to study to get more prepared for Phase 1?
# I really just want to try and work on all the bonus challenges and other ruby_review assignments to get more practice in general.  I'm pretty confident in my logic/problem solving ablities I need to be more confident in my method selection and syntax.