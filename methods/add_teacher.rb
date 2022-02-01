require_relative '../teacher'
require_relative '../memory/people_memory'

class AddTeacher
  include PeopleMemory

  def teacher_details
    print "\nAge: "
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    [age, name, specialization]
  end

  def add
    age, name, specialization = teacher_details
    teacher = Teacher.new(age, name, specialization)
    add_person(teacher)

    puts "\nTeacher created succesfully"
  end
end
