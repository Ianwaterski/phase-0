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






# What are some general rules you can apply to nested arrays?
# What are some ways you can iterate over nested arrays?
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?