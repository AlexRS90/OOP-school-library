require './person'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(age, id, name, class_room, parent_permission: true)
    super(age, id, name)
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
