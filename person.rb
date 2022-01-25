class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(name = "Unknown", age, parent_permission: true)
    @id = Random.rand(1..500)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    age_of_person = is_of_age?
    if age_of_person || @parent_permission
      return true
    else
      return false
    end  
  end

  private

  def is_of_age?
    if @age >= 18
      true
    else 
      false
    end  
  end
end