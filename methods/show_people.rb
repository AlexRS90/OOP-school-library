require_relative '../memory/people_memory'

class ShowPeople
  include PeopleMemory

  def initialize
    @people = show_people
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
