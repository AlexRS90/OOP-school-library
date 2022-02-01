require_relative '../student.rb'
require_relative './people_memory.rb'

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
        addPerson(student)
        puts "\nStudent created succesfully"
        $app.menu
    end
  end