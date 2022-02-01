require_relative '../rental'
require_relative './rentals_memory.rb'
require_relative './books_memory.rb'
require_relative './people_memory.rb'

class Add_rental
  include RentalsMemory
  include BooksMemory
  include PeopleMemory

  def initialize
    @books = getBooks()
    @people = getPeople()
    end

  def add
    if @people.empty? || @books.empty?
      puts 'Add a book or person before continue, thank you!'
    else
      puts "\nSelect a book from the list: "
      @books.each { |book| puts "#{@books.find_index(book)}) Title: #{book.title}, Author: #{book.author}" }
      book_selected = gets.chomp.to_i
      puts "\nSelect a person from the list: "
      @people.each do |person|
        print "#{@people.find_index(person)}) "
        print "[#{person.class}] Name: #{person.name}, Age: #{person.age}\n"
      end
      person_selected = gets.chomp.to_i
      puts 'YYYY/MM/DD'
      print 'Add a date in the given format: '
      date = gets.chomp
      rental = Rental.new(date, @people[person_selected], @books[book_selected])
      addRental(rental)
      puts "\nRental created successfully\nEnjoy your book =D"
    end
    $app.menu
  end
end