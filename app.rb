require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'person'
require_relative 'rental'

class Library
  attr_accessor :books, :people, :rentals

  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def show_all_books
    puts ''
    puts 'Empty Library, add a book first' if @books.empty?
    @books.each { |book| puts "#{@books.find_index(book) + 1}) Title: #{book.title}, Author: #{book.author}" }
    menu
  end

  def show_people
    puts ''
    puts 'You need to add a person' if @people.empty?
    @people.each { |person| print "#{@people.find_index(person) + 1}) "
    print "[#{person.class}] ID: #{person.id} Name: #{person.name}, Age: #{person.age}\n" }
    menu
  end

  def add_student
    print "\nAge: "
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase
    permission = permission == 'y' ? true : false
    student = Student.new(age, name, @class_room, parent_permission: permission)
    @people << student
    puts "\nStudent created succesfully"
    menu
  end

  def add_teacher
    print "\nAge: "
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(age, name, specialization)
    @people << teacher
    puts "\nTeacher created succesfully"
    menu
  end

  def add_new_person
    print "\nDo you want to create a student (1) or a teacher (2)? [Input the number]: "
    person = gets.chomp.to_i
    case person
    when 1
      add_student
    when 2
      add_teacher
    else
      puts 'Enter a valid option, 1 - Student, 2 - Teacher'
      add_new_person
    end
  end

  def add_new_book
    print "\nTitle: "
    title = gets.chomp.capitalize
    print 'Author: '
    author = gets.chomp.capitalize
    book_name = Book.new(title, author)
    @books << book_name
    puts 'Book created successfully'
    menu
  end

  def new_rental
    if @people.empty? || @books.empty?
      puts 'Add a book or person before continue, thank you!'
      menu
    end
    puts "\nSelect a book from the list: "
    @books.each { |book| puts "#{@books.find_index(book)}) Title: #{book.title}, Author: #{book.author}" }
    book_selected = gets.chomp.to_i
    puts "\nSelect a person from the list: "
    @people.each { |person| puts "#{@people.find_index(person)}) "
    print "[#{person.class}] Name: #{person.name}, Age: #{person.age}\n" }
    person_selected = gets.chomp.to_i
    puts 'YYYY/MM/DD'
    print 'Add a date in the given format: '
    date = gets.chomp
    rental = Rental.new(date, @people[person_selected], @books[book_selected])
    @rentals << rental
    puts "\nRental created successfully\nEnjoy your book =D"
    menu
  end

  def show_rentals
    if @rentals.empty?
      puts "\nAdd a new rental before continue =D"
      menu
    end
    puts "\nSelect a person by ID from the list: "
    @people.each { |person| puts "#{@people.find_index(person) + 1}) "
    print "[#{person.class}] ID: #{person.id} Name: #{person.name}\n" }
    person_selected = gets.chomp.to_i
    puts 'Rentals: '
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title}, Author: #{rental.book.title}"
      if rental.person.id == person_selected
      end
    end
    menu
  end

  def option(answer)
    case answer
    when 1
      show_all_books
    when 2
      show_people
    when 3
      add_new_person
    when 4
      add_new_book
    when 5
      new_rental
    when 6
      show_rentals
    else
      puts "\nThanks for your visit, have a great day!"
      abort
    end
  end

  def welcome
    puts "\nWelcome to School Library App!"
    menu
  end

  def menu
    puts "\nPlease choose an option by entering a number:"
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person ID'
    puts '7 - Exit'
    answer = gets.chomp.to_i
    option(answer)
  end
end
