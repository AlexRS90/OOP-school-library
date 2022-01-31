require_relative '../student.rb'

class AddStudent
    def add
        print "\nAge: "
        age = gets.chomp.to_i
    
        print 'Name: '
        name = gets.chomp
    
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp.downcase
    
        student = Student.new(age, name, @class_room, parent_permission: permission == 'y')
        $people << student
        puts "\nStudent created succesfully"
        $app.menu
    end
  end