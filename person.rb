require './corrector'

class Person
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(age, _id = 0, name = 'Unknown')
    _id == 0 ? @id = Random.rand(1..500) : @id = _id
    @name = name
    @age = age
    @check_name = Corrector.new
    @rental = []
  end

  def validate_name
    @name = @check_name.correct_name(@name)
  end

  def can_use_services?
    (of_age? || @parent_permission)
  end

  def add_rentals(date, book)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    (@age >= 18)
  end
end
