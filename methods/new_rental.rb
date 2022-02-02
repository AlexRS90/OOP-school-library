require_relative '../rental'
require_relative '../memory/rentals_memory'
require_relative '../memory/books_memory'
require_relative '../memory/people_memory'

class AddRental
  include RentalsMemory
  include BooksMemory
  include PeopleMemory

  def initialize
    @books = show_books
    @people = show_people
  end

  def rental_details
    book_selected = @books.length
    person_selected = @people.length
    while book_selected >= @books.length
      puts "\nSelect a book from the list: "
      @books.each { |book| puts "#{@books.find_index(book)}) Title: #{book.title}, Author: #{book.author}" }
      book_selected = gets.chomp.to_i
    end
    while person_selected >= @people.length
      puts "\nSelect a person from the list: "
      @people.each do |person|
        print "#{@people.find_index(person)}) "
        print "[#{person.class}] Name: #{person.name}, Age: #{person.age}\n"
      end
      person_selected = gets.chomp.to_i
    end
    print 'YYYY/MM/DD - Add a date in the given format: '
    date = gets.chomp
    [book_selected, person_selected, date]
  end

  def add
    if @people.empty? || @books.empty?
      puts 'Add a book or person before continue, thank you!'

    else
      book_selected, person_selected, date = rental_details
      rental = Rental.new(date, @people[person_selected], @books[book_selected])
      add_rental(rental)
      puts "\nRental created successfully\nEnjoy your book =D"
    end
  end
end
