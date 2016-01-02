# Factorial

# I worked on this challenge [with: Baron Kwan].


# Your Solution Below
def factorial(number)
 # Your code goes here
 total = 1

     if number == 0
         return total
     end

    while number >= 1
         total *= number
         number -= 1

     end

     return total

end