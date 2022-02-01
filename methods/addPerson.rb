require_relative './addStudent'
require_relative './addTeacher'

class AddPerson
  def initialize
    @addStudent = AddStudent.new
    @addTeacher = AddTeacher.new
  end

  def add
    print "\nDo you want to create a student (1) or a teacher (2)? [Input the number]: "
    person = gets.chomp.to_i

    case person
    when 1
      @addStudent.add
    when 2
      @addTeacher.add
    else
      puts 'Enter a valid option, 1 - Student, 2 - Teacher'
      add
    end
  end
end
