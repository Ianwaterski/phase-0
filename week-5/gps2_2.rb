
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define a method that accepts strings as input
  # create hash with default value of 1
  # set the default key to 1 for all string inputs
  # take string input and switch to array
  # iterate through the array to add array elements to hash
  # use our pretty list method to display default list
# output: our grocery list in hash format




# Method to add an item to a list
# input: item name (string) and optional quantity (integer), list (hash)
# steps: accept an input of new item and a quantity, then add input to current list, call pretty list
# output: pretty list with additional item/quantity

# Method to remove an item from the list
# input: item name(string), list(hash) to be removed from list
# steps: accept input of item to be removed, then edit current to list to reflect, call pretty list
# output: pretty list without removed item

# Method to update the quantity of an item
# input: item(string) and updated quantity(string), list(hash)
# steps: define update quantity as taking two arguments, item and value.  Update new item with quantity. Call pretty list
# output: pretty list hash

# Method to print a list and make it look pretty
# input: list(hash)
# steps: iterate over items and format output
# output: list (hash)


# DEFINE 'update', which takes three arguments, an item (string), a quantity (a string) and a list(hash):
# IF ...

######## CODE

def create_list(items)
  grocery_list = Hash.new(1)
  items = items.split(" ")
  items.each do |item|
    grocery_list[item] = 1
  end
  pretty_list(grocery_list)
end


def pretty_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end


def add_item(item, quantity = 1, list)
  list[item] = quantity
  pretty_list(list)
end

def remove_item(item, list)
  list.delete(item)
  pretty_list(list)
end

def change_quantity(item, quantity, list)
  list[item] = quantity
  pretty_list(list)
end


######## TEST CODE


saturdays_list = create_list("milk eggs cheese") #=> {}
p saturdays_list == {"milk" => 1, "eggs" => 1, "cheese" => 1}


# p add_item("water", 10, saturdays_list) == {"milk" => 1, "eggs" => 1, "cheese" => 1, "water" => 10}

# p remove_item("milk", saturdays_list) == {"eggs" => 1, "cheese" => 1}

# p saturdays_list == {"eggs" => 1, "cheese" => 1}

p change_quantity("milk", 3, saturdays_list) == {"milk" => 3, "eggs" => 1, "cheese" => 1}


# Reflection
# What did you learn about pseudocode from working on this challenge?
# We spent a lot of time working through our pseudocode and found it is amazingly useful to get a working product.  Not only was it a good reference for us to look back on, but it got us thinking from the get go about the logic that would be needed to finish the challenge.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# We went with a hash from the start because of the unordered nature of the list we were creating.  Array's would have been more difficult to keep track of indexes for which item we were adding or editing so a Hash seemed like the natural choice.

# What does a method return?
# A the last declared value by default.

# What kind of things can you pass into methods as arguments?
# String, integers, arrays, floats.

# How can you pass information between methods?
# Instance variables seem to be the easiest way to pass information between methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# For me I think setting up solid pseudocode and using test code while working were really solidified during this challenge.  Our guide really wanted us to focus on using test code after finishing each method to make our troubleshooting and debugging much shorter.  Method definition and iteration is still something I need work on but is something that gets clearer everytime I use it.  I also need to spend more time on Hash semantics since it feels like I spent a lot of time using arrays this week and last.