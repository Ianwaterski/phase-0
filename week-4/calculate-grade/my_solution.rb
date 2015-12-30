# Calculate a Grade

# I worked on this challenge [with: Peter Stradakis].


# Your Solution Below

def get_grade(grade)


  if grade >= 90
    return "A"
  elsif (grade <= 89 && grade >=80)
    return "B"
  elsif (grade <= 79 && grade >=70)
    return "C"
  elsif (grade < 69 && grade >=60)
    return "D"
  elsif grade < 60
    return "F"
  end



end

puts "What is your numerical grade?"
grade = gets.chomp.to_i
get_grade(grade)
