require './person'
require './classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, class_room, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @class_room = class_room
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

alex = Student.new(31, "Alex", "OOP")
class_room_1 = Classroom.new("Classroom A: Math")
p class_room_1.student
class_room_1.add_student(alex)


p class_room_1.label
p class_room_1.student
p alex.name

alex.classroom = class_room_1
p alex.classroom.label
