#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  def myname
    @name = "Ian"
  end
end

class Greeting
  attr_reader :name
  def initialize
    @name = NameData.new
  end

  def hello
    p "Hello #{@name.myname}!"
  end
end

new = Greeting.new
new.hello




# Reflection

# Release 1
# What are these methods doing?
# They are changing the instance variable values from outside of the class.

# How are they modifying or returning the value of instance variables?
# They are calling methods from within the class to change the instance variables from outside of the class.  P is beingused to return the values.

# Release 2
# What changed between the last release and this release?
# This release uses the attr_reader method.

# What was replaced?
# The what_is_age method

# Is this code simpler than the last?
# It removes a method and replaces it with another.  I'd say this is slightly more readable assuming you know what the attr_reader method is.

# Release 3
# What changed between the last release and this release?
# This release uses both the reader and writer attr methods, because of this the change_my_age method was no longer needed.

# What was replaced?
# The .change_my_age method call is changed to just .age.

# Is this code simpler than the last?
# This is getting simpler yes.  By removing a method now and using both the attr reader/writer you are able to completely change the instance variable from outside of the class without the use of a method.


# More Reflection
# What is a reader method?
# A reader method is a way for ruby to share the value of an instance value across classes

# What is a writer method?
# A writer method is a way for ruby to reassign values of instance variables in different classes

# What do the attr methods do for you?
# They save you time by not having to define methods each time you want to use the same value.
# Should you always use an accessor to cover your bases? Why or why not?
# Not always, some times you do not want other users to be able to change the values of the variables they are accessing.  For this reason using write/read in accessors place gives you more protection for your code.

# What is confusing to you about these methods?
# Throughout the examples I didn't have much of a problem but once it came time to apply what I learned I struggled to figure out why I was getting a long string that looked like "Hello #<NameData:0x00000002792e38>".  I figured it out with a bit of proof reading but it can be very fickle with wording.  I used initialize in the first method for myname instead of just using def myname.  I think that had something to do with the ultimate output.