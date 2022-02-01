module BooksMemory
  @@books = []

  def addBooks(newBook)
    @@books.push(newBook)
  end

  def getBooks
    @@books
  end
end
