# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Matthew Baquerizo].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: credit card number (string)
# Output: true/false (boolean)
# Steps: create creditcard (class).  Going to accept a credit card number as argument.  Define check_card method.  Split the string to seperate numbers, then convert to integers. Iterate through array, only doubling indexes that evenly divisible by 2. Assign doubled values to new array. Convert new array to string, split string, convert to integer and add.  Check to see if number is divisible evenly by 10.  If it is return true.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(numbers)
#     @numbers = numbers

#     raise ArgumentError.new("#{@numbers} should be 16 digits. Your number was #{@numbers.length} digits") unless @numbers.length == 16

#   end


#   def check_card

#     numbers_array = @numbers.split('')

#     numbers_array.map! do |num|
#       num.to_i
#     end

#     numbers_array.each_index do |i|
#       if i % 2 == 0
#         numbers_array[i] *= 2
#       end
#     end

#     numbers_array.map! do |x|
#       x.to_s.split('')
#     end
#     numbers_array.flatten!

#     numbers_array.map! do |num|
#       num.to_i
#     end

#     sum = numbers_array.inject{|sum, x| sum + x}
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end

#   end

# end

# creditcard = CreditCard.new("1234567891011109021")
# p creditcard.check_card



# Refactored Solution

class CreditCard
  def initialize(numbers)
    @numbers = numbers

    raise ArgumentError.new("#{@numbers} should be 16 digits. Your number was #{@numbers.to_s.length} digits") unless @numbers.to_s.length == 16

  end


  def check_card
    numbers_string = @numbers.to_s

    numbers_array = @numbers.to_s.split('').map! do |num|
      num.to_i
    end

    numbers_array.each_index do |i|
       numbers_array[i] *= 2 if i % 2 == 0
    end


    #Feels like we should be able to refactor, but not sure how
    numbers_array.map! do |x|
      x.to_s.split('')
    end

    numbers_array.flatten!.map! do |num|
      num.to_i
    end

    sum = numbers_array.inject{|sum, x| sum + x}

    sum % 10 == 0 ? true : false


  end
end


# creditcard = CreditCard.new("1234567891011021")
# p creditcard.check_card

# Reflection
# What was the most difficult part of this challenge for you and your pair?
# We did a lot of iterating in order to switch the credit card input between string and integer in order to use certain methods on it.  Keeping track of where we were and how we were doing that was a bit difficult.  We used some really good driver good along the way that helped us isolate where our issues were and what our method was printing out at the time.

# What new methods did you find to help you when you refactored?
# I don't think we used any methods that I hadn't used so far.  Had some more chances to use methods like flatten and map which were a huge help.

# What concepts or learnings were you able to solidify in this challenge?
# Which methods were usable on which data types.  We were getting the occasional error when trying to call certain methods on our array of numbers depending on what state it was in.