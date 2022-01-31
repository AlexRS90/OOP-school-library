require_relative '../teacher.rb'

class AddTeacher
    def add 
        print "\nAge: "
        age = gets.chomp.to_i
        print 'Name: '
        name = gets.chomp
        print 'Specialization: '
        specialization = gets.chomp
        teacher = Teacher.new(age, name, specialization)
        $people << teacher
        puts "\nTeacher created succesfully"
        $app.menu
    end
end