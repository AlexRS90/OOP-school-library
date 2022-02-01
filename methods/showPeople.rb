require_relative './people_memory'

class Show_people
  include PeopleMemory

  def initialize
    @people = getPeople
  end

  def show
    puts ''
    puts 'You need to add a person' if @people.empty?
    @people.each do |person|
      print "#{@people.find_index(person) + 1}) "
      print "[#{person.class}] ID: #{person.id} Name: #{person.name}, Age: #{person.age}\n"
    end
  end
end