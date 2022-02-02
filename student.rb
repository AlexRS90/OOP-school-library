require './person'

class Student < Person
  attr_reader :Classroom
  attr_reader :parent_permission

  def initialize(age, name, class_room, parent_permission: true)
    super(age, name)
    @parent_permission = parent_permission
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
