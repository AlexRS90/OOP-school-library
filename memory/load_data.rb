#Memory
require_relative './books_memory'
require_relative './people_memory'
require_relative './rentals_memory'
#Classes
require_relative '../book'


module LoadData
  include BooksMemory
  include PeopleMemory
  include RentalsMemory
    

  

    def load_books
    if File.file?('./json/books.json')
    file = File.read('./json/books.json')
    data_hash = JSON.parse(file)
    data_hash.each do |data|
    book_name = Book.new(data["title"], data["author"])
    add_books(book_name)    

    end
    end
end
  
    


  end
  