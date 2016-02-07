# Initial Solution

class Student
  attr_accessor :scores
  attr_reader :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores
  end

  def sum
    @sum ||= scores.inject(:+)
  end

  def average
    @avg ||= sum/scores.length
  end

  def letter_grade
    if average >= 90
      return "A"
    elsif (average <= 89 && average >=80)
      return "B"
    elsif (average <= 79 && average >=70)
      return "C"
    elsif (average < 69 && average >=60)
      return "D"
    elsif average < 60
      return "F"
    end
  end

end

students = Array.new
scores = [100,100,100,0,100]

alex_student = Student.new("Alex", [100,100,100,0,100])
bob_student = Student.new("Bob", [100,100,100,0,100])
jim_student = Student.new("Jim", [100,100,100,0,100])
jimbob_student =  Student.new("JimBob", [100,100,100,0,100])
bobjim_student = Student.new("BobJim", [100,100,100,0,100])


students << alex_student
students << bob_student
students << jim_student
students << jimbob_student
students << bobjim_student

def linear_search(array, name)
  array.each_with_index do |student, index|
    if student.first_name == name
      return index
    end
  end
  -1
end

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# # # # Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# # # Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1



//Refactor

# Initial Solution

class Student
  attr_accessor :scores
  attr_reader :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores
  end

  def sum
    @sum ||= scores.inject(:+)
  end

  def average
    @avg ||= sum/scores.length
  end

  def letter_grade
    if average >= 90
      return "A"
    elsif (average <= 89 && average >=80)
      return "B"
    elsif (average <= 79 && average >=70)
      return "C"
    elsif (average < 69 && average >=60)
      return "D"
    elsif average < 60
      return "F"
    end
  end

end

students = Array.new

students << alex_student = Student.new("Alex", [100,100,100,0,100])
students << bob_student = Student.new("Bob", [100,100,100,0,100])
students << jim_student = Student.new("Jim", [100,100,100,0,100])
students << jimbob_student =  Student.new("JimBob", [100,100,100,0,100])
students << bobjim_student = Student.new("BobJim", [100,100,100,0,100])

def linear_search(array, name)
  array.each_with_index do |student, index|
    if student.first_name == name
      return index
    end
  end
  -1
end

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# # # # Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# # # Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1



# Reflection
# What concepts did you review in this challenge?
# I spent time reviewing some iteration.  We also used some past challenges to review our sum/average function as well.  As a whole I think we spent more time reviewing objects and instances in order to get our test code to pass.

# What is still confusing to you about Ruby?
# Ruby is becoming clearer everytime I use it, without the break for JS I think I would be pretty confident in my abilities.  I think my problem solving is pretty solid but what needs time is going to be the repetition of syntax and built in methods.

# What are you going to study to get more prepared for Phase 1?
# Currently I'm still just drilling myself with ruby challenges and review.  I want to be as comfortable as possible before Phase 1 kicks in to gear.  Like I said I feel pretty confident in my ability to solve the logic, but implementing the correct methods and syntax is what is taking me more time.