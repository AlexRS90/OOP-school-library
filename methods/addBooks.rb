require_relative '../book'
require_relative './books_memory.rb'

class AddBooks
    include BooksMemory

    def add
    print "\nTitle: "
    title = gets.chomp.capitalize
    print 'Author: '
    author = gets.chomp.capitalize
    book_name = Book.new(title, author)
    addBooks(book_name)
    puts 'Book created successfully'
    end


end 
