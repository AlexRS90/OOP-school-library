require "./person.rb"

class Student < Person
  def initialize(name, age, class_room)
    super(name, age)
    @class_room = class_room
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end