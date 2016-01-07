# # I worked on this challenge [with: Brian Bier ]

# # I spent [] hours on this challenge.

# # Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented in the file.
# # 0. Pseudocode

# # What is the input?

# # What is the output? (i.e. What should the code return?)

# # What are the steps needed to solve the problem?

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
# my_array = [1,2,3]
# p pad!(my_array,  5, 'apples')
# p my_array
# end


def pad(array, min_size, value=nil) #non-destructive
# Your code here
  # clone method ruby

  if array.length == min_size || min_size == 0
    return array
  end

  new_array = []

array.each do |element|
    new_array.push(element)
  end

  #if item from original array not present add to new

  until new_array.length == min_size
    new_array.push(value)
  end
  new_array
end


# 3. Refactored Solution


# 4. Reflection