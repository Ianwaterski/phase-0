# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#   puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    Errors.rb

# 2. What is the line number where the error occurs?
#    8

# 3. What is the type of error message?
#    Syntax

# 4. What additional information does the interpreter provide about this type of error?
#    Unexpected "=" it was expecting an end-of-input

# 5. Where is the error in the code?
#    Line 8

# 6. Why did the interpreter give you this error?
#    The variable needs to be in front of what it defines   cartmans_phrase = "Text here" not after.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#   40
# 2. What is the type of error message?
#   Name error
# 3. What additional information does the interpreter provide about this type of error?
#    Undefined local variable
# 4. Where is the error in the code?
#    Line 40? Theres no definition following the variable.
# 5. Why did the interpreter give you this error?
#    The variable south_park has no assigned definition.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 55
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => Undefined method
# 4. Where is the error in the code?
# => The error in the code comes after the method where no parameters are given.
# 5. Why did the interpreter give you this error?
# => cartman is not a defined method.  It has no parameters.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 70
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments
# 4. Where is the error in the code?
# => after the def cartmans_phrase, there is no parameter in parantheses.
# 5. Why did the interpreter give you this error?
# => There are no parentheses when defining the method so cartmans_phrase is not expecting any input.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 93
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => It is expecting 1 argument and get 0.
# 4. Where is the error in the code?
# => The error comes at the end of the code where the method cartman-says is called but has no parameter given.
# 5. Why did the interpreter give you this error?
# => cartman_says should have something in paratheses to satisfy the parameter of offensive_message in the method. ie: cartman_says("that's my pot pie kitty")



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 110
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => The method is expecting two arguments but only gets one.
# 4. Where is the error in the code?
# => When calling the method on 114 there is only one parameter given but the method defines two.
# 5. Why did the interpreter give you this error?
# => There should be another parameter given when cartmans_lie is called on line 114.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 129
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => It is before the string "respect..." where it uses the asterisk operator
# 5. Why did the interpreter give you this error?
# => You can't multiple 5 "respect my authoritay" times.  Vice versa will work.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 144
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => Divided by 0
# 4. Where is the error in the code?
# => In the 20/0 definition.
# 5. Why did the interpreter give you this error?
# => You can't divide by zero.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 160
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file in given dir
# 4. Where is the error in the code?
# => The code itself could be right, but there is no file cartmans_essay.md available for it to reference.
# 5. Why did the interpreter give you this error?
# => The file cartmans_essay.md does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#They were all pretty straightforward, I guess the most difficult ones were the methods that had multiple parameters assigned but were only given one argument when called at the end of the code.

#How did you figure out what the issue with the error was?
#I tried to think about how the code was supposed to be used and worked my way back.  If it called two parameters I checked to see if two parameters were called, if only one I did the same.  I did some research via google but most of it seemed easy. (Hopefully correct)

#Were you able to determine why each error message happened based on the code?
#For the most part.  I had to re open the text to double check on methods and defining methods to make sure they were done correctly but other than that it was mainly memory.

#When you encounter errors in your future code, what process will you follow to help you debug?
#Being able to see where the code happens via code line is super useful.  It allows me to go right to the source and start debugging from there instead of searching which is huge.  Once at the spot of the error it becomes a proofreading exercise in trying to figure out the syntax of the code and what it's trying to do.  Once semantics are figured out it comes down to making sure everything is defined and called correctly.