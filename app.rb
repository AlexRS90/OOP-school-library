# require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'person'
require_relative 'rental'
module Library
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  # def show_all_books
  #   puts ''
  #   puts 'Empty Library, add a book first' if @books.empty?
  #   @books.each { |book| puts "#{@books.find_index(book) + 1}) Title: #{book.title}, Author: #{book.author}" }
  # end

  def show_people
    puts ''
    puts 'You need to add a person' if @people.empty?
    @people.each do |person|
      print "#{@people.find_index(person) + 1}) "
      print "[#{person.class}] ID: #{person.id} Name: #{person.name}, Age: #{person.age}\n"
    end
  end

  # def add_student
  #   print "\nAge: "
  #   age = gets.chomp.to_i

  #   print 'Name: '
  #   name = gets.chomp

  #   print 'Has parent permission? [Y/N]: '
  #   permission = gets.chomp.downcase

  #   student = Student.new(age, name, @class_room, parent_permission: permission == 'y')
  #   @people << student
  #   puts "\nStudent created succesfully"
  # end

  # def add_teacher
  #   print "\nAge: "
  #   age = gets.chomp.to_i
  #   print 'Name: '
  #   name = gets.chomp
  #   print 'Specialization: '
  #   specialization = gets.chomp
  #   teacher = Teacher.new(age, name, specialization)
  #   @people << teacher
  #   puts "\nTeacher created succesfully"
  # end

  # def add_new_person
  #   print "\nDo you want to create a student (1) or a teacher (2)? [Input the number]: "
  #   person = gets.chomp.to_i
    
  #   case person
  #   when 1
  #     add_student
  #   when 2
  #     add_teacher
  #   else
  #     puts 'Enter a valid option, 1 - Student, 2 - Teacher'
  #     add_new_person
  #   end
  # end

  # def add_new_book
  #   print "\nTitle: "
  #   title = gets.chomp.capitalize
  #   print 'Author: '
  #   author = gets.chomp.capitalize
  #   book_name = Book.new(title, author)
  #   @books << book_name
  #   puts 'Book created successfully'
  # end

  def new_rental
    if @people.empty? || @books.empty?
      puts 'Add a book or person before continue, thank you!'

    end
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
    @rentals << rental
    puts "\nRental created successfully\nEnjoy your book =D"
  end

  def show_rentals
    if @rentals.empty?
      puts "\nAdd a new rental before continue =D"

    end
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
