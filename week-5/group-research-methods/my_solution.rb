# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: Crete a hash
#fill hash with string data
  # split string on spaces into an array
# Iterate over array and assign each item as key to hash with value 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list and item to add
# steps: ask user input and assign to hash
# output: nothing

# Method to remove an item from the list
# input: list and item to remove
# steps: remove from list
# output: nothing

# Method to update the quantity of an item
# input: list and item
# steps: access hash and modify value
# output: nothing

# Method to print a list and make it look pretty
# input: list
# steps: print
# output: list

def create(items)
  item_container = Hash.new()
  array = items.split(" ")
  array.each {|item| item_container[item] = 1 }
  item_container
end

def add(list, item)
  if list[item]
    list[item] += 1
  else
    list[item] = 1
  end
end

def update(list, item, quantity)
  list[item] += quantity
end

def print(list)
  list.each { |item, quantity| puts "Item: #{item}, Quantity: #{quantity}"}
end

# my_list = create("carrots apples cereal pizza") #=> { :carrots => 1, :apples => 1, :cereal => 1, :pizza => 1 }
# p add(my_list, "tacos")

# p update(my_list, "carrots", 3)

# print(my_list)



# What did you learn about pseudocode from working on this challenge?
  #pseudocode is easier to change and serves as a white board for your code planning.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
#Hashes are better for this challenge since you are making a list and want to be able to access an item by simple calling its name as a string. In an Array you'd need to remember it's index number.

# What does a method return?
# a method returns the last value by default

# What kind of things can you pass into methods as arguments?
# strings, arrays, hashes, integers, floats, nil

# How can you pass information between methods?
#by returning the information or setting one method equal to a new variable

# What concepts were solidified in this challenge, and what concepts are still confusing?
# iterating through hashes was solidified and at the same time dealing with hashes is still a little confusing. It's going to take a bit more practice to get used to them.

# Person 2
# input: an array and a number
# output the array with the modification that any elements of it that were numbers have been
#   incremented by the number given as an argument (non-numeric elements unchanged)
# steps:
#   - iterate through the array
#   - if the element is not a number, leave it alone
#     - otherwise, replace the original number with the sum of that original number and the
#       number given as an argument
#   - return the array, with modifications (not a copy!)
def my_array_modification_method!(source, thing_to_modify)
  index = 0
  source.each { |item|
    if item.respond_to?(:integer?)
      source[index] = item + thing_to_modify
      index += 1
    else
      index += 1
    end
  }
end

# input: an hash and a number
# output the hash with the modification that each of its values have been incremented
#   by the number given as an argument
# steps:
#   - iterate through the hash
#   - replace the original value with the value plus the second argument provided
#   - return the hash, with modifications (not a copy!)

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |key, value|
    source[key] = value + thing_to_modify
  }
end

# Identify and describe the Ruby method(s) you implemented.
=begin
integer?
 This method checks whether its receiver is an integer. It returns "true" if the object is
 an integer.
respond_to?
 This method takes a method name as its argument and returns "true" if the receiver object
 has that argument as a method. In this case, I wanted to add an integer to only those elements
 in the array that were themselves integers and leave the strings alone. If you try to add an
 integer to a string, you'll get an error so, to avoid that, I called respond_to?(:integer?) on
 each element of the array and performed the addition only on those for which this returned "true".
 This is not a great solution because (a) if the numbers in the array had been in quotes, it
 wouldn't have worked and (b) strings can successfully call the .to_i method, and would then return
 true for this... It did pass the tests though!
each
 The each method works on both Arrays and Hashes. It iterates through the collection and performs
 some operation on each member of it. The operation it performs is whatever is in the code block
 that follows it, enclosed in {}.
[]
 I'm probably being too literal here in listing this method but it is one. With an array, you can
 set (or replace, as in this case) an element at a paticular index by calling this method. For
 example: source[index] = new_element. In a hash, you can set a value equal to a key, as in:
 source[key] = value + thing_to_modify
+=
 Okay, definitely getting too literal but...this one takes a value and adds that value to whatever
 is to the right of the method call so index += 1 is the same thing as index = index + 1
TIPS FOR USING RUBY DOCS
 The only tip I've got at the moment is to not limit yourself to the object you think you should
 looking at. I roamed all over arrays, hashes, strings, integers (not so much in enumerables,
 actually) and tried a bunch of different things. By "roaming" I mean that I scrolled through the
 list of methods and looked at any that seemed even remotely likely. I also found it helpful to
 look closely at the examples to try to figure out in advance what exactly I'd get back as a
 return value. Some things did not do what I had expected them to.
=end



# Person 3
def my_array_sorting_method(source)

  copy_source = Array.new(source)
  copy_source.sort_by { |x| x.to_s }

end

def my_hash_sorting_method(source)

  # source.to_a
  # source.sort_by { |k, v| v }

  source.to_a.sort_by { |k, v| v } # Single line version

end

# Identify and describe the Ruby method(s) you implemented.

# I used .sort_by for both methods to do the sorting.  This is a built in array method. It takes a
# object and block setup.  So you would write it like this:
#
#   some_array.sort_by { |obj| code_block }
#
# It's very helpful because it allows you to specify how you want it to sort, or run an additional
# code block with your sort.
#
# I also used .to_a which is a hash method that converts the given hash to a multi-dimensional array,
# where each key/value pair is its own array inside the larger array.
#

# Person 4
# Input: An array and a letter.
# Output: Original array with strings containing letter deleted.
# Steps:
  # -Iterate over the array.
  # -IF an element contains the letter
  #   -Delete that element
  # -ELSE
  #   -Keep that element
  # -RETURN the array with deleted elements
def my_array_deletion_method!(source, thing_to_delete)
  source.reject! { |x| x.to_s.include?(thing_to_delete) }
end

# I knew the following was going to be so similar to my_array_deletion_method! that I didn't feel
# the need to pseudocode again.
def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! { |k, v| k.to_s.include?(thing_to_delete) }
end

## Identify and describe the Ruby method(s) you implemented:
# .reject!{} - Returns an array for which the given block returns false, and does so destructively.

# .to_s - Converts attached element to a string. It took me forever to realize that not including
# this was causing me to fail the rspec tests...

# .include?() - Returns true if any of the specified characters are contained in the attached element.

## How to use each method:
# .reject!{} - Attach this method to the element you want to delete from (include the bash if you want
# it to be destructive, omit it if you want it to be non-destructive), then give it an argument based
# on what you would like to remove.

# .to_s - Attach this method to an element you want to be converted into a string.

# .include?() - Attach this method to an element you want to check the contents of, then put the thing
# you want to check for in the parentheses.

## Tricks to decipher Ruby Docs:
# I found it helpful to start with the type of class I am working with (e.g. array, hash, etc.).
# Then I search the 'Methods' menu on the left for keywords that might fit with what I'm trying to do.
# I usually end up just going to the class and scrolling down until I see something that might work.
# I think this will help down the road because I'll skim over a bunch of methods I can come back to.



# Person 5
def my_array_splitting_method(source)
  integer_array = []
  string_array = []

  source.each do |item|
    if item.respond_to?(:integer?)
      integer_array.push(item)
    else
      string_array.push(item)
    end
  end
  [integer_array, string_array]
end



def my_hash_splitting_method(source, age)
  lessthan4_array = []
  otherpets_array = []

  source.each do |item|
    if item.find_all {|item| item.to_i < 4}
      lessthan4_array.push(item)
    else
      otherpets_array.push(item)
    end
  end
  [lessthan4_array, otherpets_array]
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#