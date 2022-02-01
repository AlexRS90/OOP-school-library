require_relative './add_student'
require_relative './add_teacher'

class AddPerson
  def initialize
    @add_student = AddStudent.new
    @add_teacher = AddTeacher.new
  end

  def add
    print "\nDo you want to create a student (1) or a teacher (2)? [Input the number]: "
    person = gets.chomp.to_i

    case person
    when 1
      @add_student.add
    when 2
      @add_teacher.add
    else
      puts 'Enter a valid option, 1 - Student, 2 - Teacher'
      add
    end
  end
end
