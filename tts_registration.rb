@courses = [ ]
@students = [ ]
@registration { }

class Course #lines 1 - 10 is blueprint

  attr_accessor :name, :description, :level

  def initialize(name, description, level)
    @name = name
    @description = description
    @level = level
  end

end

class Student 

  attr_accessor :name, :age, :hometown

    def initialize(name, age, hometown)
    @name = name
    @age = age
    @hometown = hometown

  end
end


def print_menu(thumbs)

  if thumbs == "up"
  system "clear"
  end

  puts "Welcome to TTS Registration"

  puts "Enter a selection: "
  puts "1. Add a course "
  puts "2. List courses "
  puts "3. Add a student "
  puts "4. List students "
  puts "5. Register students "
  puts "9. Exit"

  @option = gets.chomp.to_i
end

def add_course
  puts "Enter course name: "
  course_name = gets.chomp
  puts "Enter a decription: "
  desc = gets.chomp
  puts "Enter a difficulty level: "
  level = gets.chomp


ruby = Course.new(course_name, desc, level) #actual instance of the course object

@courses.push(ruby)

print_menu("no")
end

def list_courses
  @courses.each do |course|
    puts "#{course.name} | #{course.description}"
end
  print_menu("no")
end

def add_student
    puts "Enter student name: "
    student_name = gets.chomp
    puts "Enter student age: "
    age = gets.chomp
    puts "Enter student hometown: "
    hometown = gets.chomp

    ruby = Student.new(student_name, age, hometown)

    @students.push(ruby)

    print_menu("no")

end

def list_students
  @students.each do |student|
    puts "#{student.name} | #{student.hometown}"
  end
  print_menu("no")
end

def register_students
  puts "Please select from the following students: "
  @students.each_with_index do |course, index|
    puts "#{index+1}. #{student.name}"
end

student_choice = gets.chomp.to_i

puts "Please select from the following courses: "
@courses.each_with_index do |course, index|
  puts "#{index+1}. #{courses.name}"
end

 course_choice = gets.chomp.to_i

  puts "Thank you"
end

end


while @option != 9
  if @option == 1
    add_course
  elsif @option == 2
    list_courses
  elsif @option == 3
    add_student
  elsif @option == 4
  list_students
elsif @option == 5
  register_students
else
    print_menu ("up")
  end 
end

  
