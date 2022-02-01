require_relative '../teacher'
require_relative './people_memory'

class AddTeacher
  include PeopleMemory

  def add
    print "\nAge: "
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(age, name, specialization)
    addPerson(teacher)

    puts "\nTeacher created succesfully"
  end
end
