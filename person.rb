class Person
  attr_accessor :name, :age
  attr_reader :id

  def inicialize( name = "Unknown", age, parent_permission = true )
    @id = Random.rand(1..500)
    @name = name
    @age = age
  end

  def can_use_services?(person)
    if person.is_of_age? || person.parent_permission
      true
    end  
  end

  private

  def is_of_age?(person)
    if person.age >= 18
      true
    else 
      false
    end  
  end
end