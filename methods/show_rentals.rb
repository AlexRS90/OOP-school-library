require_relative '../memory/rentals_memory'
require_relative '../memory/people_memory'

class DisplayRentals
  include RentalsMemory
  include PeopleMemory

  def initialize
    @people = show_people
    @rentals = show_rentals
  end

  def rentals_details
    puts "\nSelect a person by ID from the list: "
    @people.each do |person|
      print "#{@people.find_index(person) + 1}) "
      print "[#{person.class}] ID: #{person.id} Name: #{person.name}\n"
    end
    gets.chomp.to_i
  end

  def show
    if @rentals.empty?
      puts "\nAdd a new rental before continue =D"
    else
      person_selected = rentals_details
      puts 'Rentals: '
      @rentals.each do |rental|
        if rental.person.id == person_selected
          puts "Date: #{rental.date}, Book: #{rental.book.title}, Author: #{rental.book.author}"
        end
      end
    end
  end
end
