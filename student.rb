require './person'

class Student < Person
  def initialize(age, name, class_room, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @class_room = class_room
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

janeth = Student.new(23, "Janeth", "CC", parent_permission: true)

p janeth.can_use_services?