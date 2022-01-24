require "./person.rb"

class Student < Person
  def inicialize(name, age, class_room)
    super(name, age, true)
    @class_room = class_room
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end