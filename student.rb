require './person'
require './classroom'

class Student < Person
  attr_reader :classroom

  def initialize(age, name, class_room, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @class_room = class_room
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

alex = Student.new(31, "Alex", "OOP")
mati = Student.new(7, "Matias", "JS")
class_room_1 = Classroom.new("Classroom A: Coding")

class_room_1.add_student(alex)
class_room_1.add_student(mati)

p alex.classroom.label
p class_room_1.student.last.name
p class_room_1.student.count
