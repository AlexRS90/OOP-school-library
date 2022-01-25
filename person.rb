class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission: true, name = 'Unknown')
    @id = Random.rand(1..500)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    age_of_person = of_age?
    (return true if age_of_person || @parent_permission) 
  end

  private

  def of_age?
    @age >= 18
      true
  end
end
