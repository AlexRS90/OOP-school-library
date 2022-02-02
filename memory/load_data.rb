# Memory
require_relative './books_memory'
require_relative './people_memory'
require_relative './rentals_memory'
# Classes
require_relative '../book'
require_relative '../student'
require_relative '../teacher'

module LoadData
  include BooksMemory
  include PeopleMemory
  include RentalsMemory

  def load_books
    return unless File.file?('./json/books.json')

    file = File.read('./json/books.json')
    data_hash = JSON.parse(file)
    data_hash.each do |data|
      book_name = Book.new(data['title'], data['author'])
      add_books(book_name)
    end
  end

  #   def load_people
  #     if File.file?('./json/people.json')
  #       file = File.read('./json/people.json')
  #       data_hash = JSON.parse(file)
  #       data_hash.each do |data|
  #         if data.type == 'Student'
  #           person = Student.new(data["age"], data["name"], @class_room)
  #         end
  #       end
  #     end
  #   end
  # [#{person.class}] ID: #{person.id} Name: #{person.name}, Age: #{person.age}
end
