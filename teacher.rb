require "./person.rb"

class Teacher < Person
  def inicialize(name, age, specialization)
    super(name, age, nil)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end