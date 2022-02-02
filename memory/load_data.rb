# Memory
require_relative './books_memory'
require_relative './people_memory'
require_relative './rentals_memory'
# Classes
require_relative '../book'
require_relative '../student'
require_relative '../teacher'
require_relative '../person'
require_relative '../rental'

module LoadData
  include BooksMemory
  include PeopleMemory
  include RentalsMemory

  # rubocop:disable Style/ClassVars
  @@array_books = []
  @@array_person = []

  def load_books
    return unless File.file?('./json/books.json')

    file = File.read('./json/books.json')
    data_hash = JSON.parse(file)
    data_hash.each do |data|
      book_name = Book.new(data['title'], data['author'])
      @@array_books.push({ previous_id: data['object_id'], new_object: book_name })
      add_books(book_name)
    end
  end

  def load_people
    return unless File.file?('./json/people.json')

    file = File.read('./json/people.json')
    data_hash = JSON.parse(file)
    data_hash.each do |data|
      if data['type'] == 'Student'
        data['parent_permission']
        person = Student.new(data['age'], data['id'], data['name'], data['parent_permission'])
      else
        person = Teacher.new(data['age'], data['id'], data['name'], data['specialization'])
      end
      @@array_person.push({ previous_id: data['object_id'], new_object: person })
      add_person(person)
    end
  end

  def load_rentals
    return unless File.file?('./json/rentals.json')

    file = File.read('./json/rentals.json')
    data_hash = JSON.parse(file)
    data_hash.each do |data|
      matched_book = ''
      matched_person = ''

      @@array_books.each do |book|
        matched_book = book[:new_object] if book[:previous_id] == data['book']
      end

      @@array_person.each do |person|
        matched_person = person[:new_object] if person[:previous_id] == data['person']
      end

      rental = Rental.new(data['date'], matched_person, matched_book)
      add_rental(rental)
    end
  end
end
# rubocop:enable Style/ClassVars
