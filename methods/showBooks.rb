require_relative './books_memory.rb'

class ShowBooks
    include BooksMemory

    def initialize
    @books = getBooks()
    end

    def show
        puts ''
        puts 'Empty Library, add a book first' if @books.empty?
        @books.each { |book| puts "#{@books.find_index(book) + 1}) Title: #{book.title}, Author: #{book.author}" }
    end

end 

