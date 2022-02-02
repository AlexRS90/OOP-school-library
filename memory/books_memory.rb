# rubocop:disable Style/ClassVars
module BooksMemory
  @@books = []

  def add_books(new_book)
    @@books << new_book
  end

  def show_books
    @@books
  end
end
# rubocop:enable Style/ClassVars
