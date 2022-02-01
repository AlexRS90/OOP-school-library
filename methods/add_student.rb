require_relative '../student'
require_relative '../memory/people_memory'

class AddStudent
  include PeopleMemory

  def student_details
    print "\nAge: "
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase
    [age, name, permission]
  end

  def add
    age, name, permission = student_details
    student = Student.new(age, name, @class_room, parent_permission: permission == 'y')
    add_person(student)
    puts "\nStudent created succesfully"
  end
end
