# # I worked on this challenge [with: Brian Bier]

# # I spent [2.5] hours on this challenge.

# # Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented in the file.

# # 0. Pseudocode

# # What is the input?
# # The Input should be an array, the minimum size of the return, and what to fill the open indexes with after if the array doesn't fill it.

# # What is the output? (i.e. What should the code return?)
# # The output should be the array that was part of the input, and it should fill the remaining indexes(min_size) with the other supplied input, (apples in example).

# # What are the steps needed to solve the problem?
# # The steps started with a check that would determine if the array length met our given guidelines.  If it was less than the minimum size provided it would return the original array, and if the minimum size was 0 it would do the same.  From there if the array was larger than the minimum size, it should return the given value until it met the minimum size requirement.  For it to be nondestructive it was essential to define a new array to either a cloned value or an empty value that accepted the original array's input via iteration.

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
# Your code here

if array.length == min_size || min_size == 0
  return array
end

if min_size > array.length
  until array.length == min_size
    array.push(value)
  end
 end
 array
end


def pad(array, min_size, value=nil) #non-destructive
# Your code here

  new_array = array.clone
# new_array = []

  if array.length == min_size || min_size == 0
    return new_array
  end

# array.each do |element|
#     new_array.push(element)
#   end


  until new_array.length == min_size
    new_array.push(value)
  end
  new_array
end


# 3. Refactored Solution


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#Initially yes we didn't have an issue breaking down the logic.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# When we had a general idea of what we were trying to achieve I'd say yes we were successful in translating our pseudocode into actual code.  Our difficulties came with passing the object ID test.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# We encountered a number of errors along the way but were fairly successful in resolving them.  We had a lot of trouble finding the solution to the object ID test.  Much of that I think came from spending too much time working in circles and rabbit holing ourselves.  We became very focused on finishing no matter what instead of efficiently working.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# We used .clone to resolve our object ID issue.  Initially we assigned our new_array = [] then iterated through the original array to assign each value to new_array.  This was to solve the destructive method aspect of the challenge.  In the refactor we just used .clone and removed the iteration on line 44.


# How readable is your solution? Did you and your pair choose descriptive variable names?
# It appears pretty readable, after spending too much time on it it all looks the same to be honest.  In the future I will definitely time box myself much better to avoid this.


# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods take the input it is given and change it permanently.  Therefore in the example provided for this challenge if its passed [1,2,3] originally, when you call the array at the end it's going to give you [1,2,3, apples, apples].  In non destructive we assign a new array the same values to preserve the original data.
