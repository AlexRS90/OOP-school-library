require './corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id, :rental

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..500)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @check_name = Corrector.new
    @rental = []
  end

  def validate_name
    @name = @check_name.correct_name(@name)
  end

  def can_use_services?
    (of_age? || @parent_permission)
  end

  private

  def of_age?
    (@age >= 18)
  end
end
