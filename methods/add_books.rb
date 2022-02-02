require_relative '../book'
require_relative '../memory/books_memory'

class AddBooks
  include BooksMemory

  def book_details
    print "\nTitle: "
    title = gets.chomp.capitalize
    print 'Author: '
    author = gets.chomp.capitalize
    [title, author]
  end

  def add
    title, author = book_details
    book_name = Book.new(title, author)
    add_books(book_name)
    puts 'Book created successfully'
  end
end
