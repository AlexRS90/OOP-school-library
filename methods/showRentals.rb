require_relative './rentals_memory.rb'
require_relative './people_memory.rb'


class Display_rentals
  include RentalsMemory
  include PeopleMemory

  def initialize
    @people = getPeople()
    @rentals = getRentals()
    end

  def show
    if @rentals.empty?
      puts "\nAdd a new rental before continue =D"
    else
      puts "\nSelect a person by ID from the list: "
      @people.each do |person|
        print "#{@people.find_index(person) + 1}) "
        print "[#{person.class}] ID: #{person.id} Name: #{person.name}\n"
      end
      person_selected = gets.chomp.to_i
      puts 'Rentals: '
      @rentals.each do |rental|
        if rental.person.id == person_selected
          puts "Date: #{rental.date}, Book: #{rental.book.title}, Author: #{rental.book.title}"
        end
      end
    end
  end
end