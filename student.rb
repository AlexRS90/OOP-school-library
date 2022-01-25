require './person'

class Student < Person
  def initialize(age, name, class_room)
    super(age, name, parent_permission: true)
    @class_room = class_room
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

janeth = Student.new(13, 'Janeth', "CC")
p janeth.play_hooky