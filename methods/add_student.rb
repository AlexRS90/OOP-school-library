require_relative '../student'
require_relative './people_memory'

class AddStudent
  include PeopleMemory

  def add
    print "\nAge: "
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase

    student = Student.new(age, name, @class_room, parent_permission: permission == 'y')
    add_person(student)
    puts "\nStudent created succesfully"
  end
end
