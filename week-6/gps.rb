# Your Names
# 1)Emmett Susselin
# 2)Ian Wudarski

# We spent [1] hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.has_key?(item_to_make)

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# To not be intimidated by code that looks insurmountable.  There seemed to be a lot of code in this example but if you start with small sections and work down it really isn't all that difficult.

# Did you learn any new methods? What did you learn about them?
# .has_key? is a new one I haven't used before which let us evaluate keys in a hash so we could accurately use our argument error.

# What did you learn about accessing data in hashes?
# It's easier than I anticipated.  Up to this point I feel like I did a lot of work with arrays and wasn't as confident with hashes.  This refactor/driver code challenge really forced me to get more confident with accessing hashes and refactoring to deal with that.

# What concepts were solidified when working through this challenge?
# Definitely accessing hash values.  I think thats going to be invaluable with working towards my solo challenge this week and going forward in general.  Secondly I think it really helped clarify my refactoring skills.  By working through small chunks of code it made the task seem much more manageable and ultimately made the code much more readable.