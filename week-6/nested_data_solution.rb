# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# puts array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# puts hash[:outer][:inner][:almost][:3]
# p hash[[:outer,:inner,:almost][3.to_i]]
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][0][:hash]
# p nested_data[:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
# based on language, it is non-destructive because the original array (number_array) is still intact after running the code.

# new_array = []
# number_array.each do |element|
#     if element.is_a?(Array)
#       element.each do |inner_element|
#         inner_element = inner_element+5
#         new_array.push(inner_element)
#     end
#     else
#       element = element + 5
#       new_array.push(element)
#     end
# end
# p new_array
# p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

new_array = []
startup_names.flatten!
startup_names.each do |item|
  item << 'ly'
  new_array.push(item)
end
p new_array




# What are some general rules you can apply to nested arrays?
# Take your time and try to visually work your way through each data structure.  When you are unsure where you end up in your nest, use puts to see where you end up.

# What are some ways you can iterate over nested arrays?
# We ended up using .each almost exclusively.  We also used an if statement to conditionally continue the iteration if the data structure met a certain class.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We ended up using .flatten! in the bonus challenge to eliminate any need for iteration.  Not sure that was what was intended but it worked at the expense of the original data structure.  I think if we had chained .flatten with .clone we could have preserved the original structure but it made no mention of it needing to be non-destructive so we left it.