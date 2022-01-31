require_relative '../book'

class AddBooks

    def add
    print "\nTitle: "
    title = gets.chomp.capitalize
    print 'Author: '
    author = gets.chomp.capitalize
    book_name = Book.new(title, author)
    $books << book_name
    puts 'Book created successfully'
    $app.menu
    end


end 
